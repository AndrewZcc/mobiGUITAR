#!/bin/bash


#System Path
JAVA_CMD=/usr/bin/java
JARSIGNER_CMD=/usr/bin/jarsigner
ANDROID_HOME=/home/vagrant/android-sdk-linux
EMULATORPATH=$ANDROID_HOME/tools
PLATFORMPATH=$ANDROID_HOME/platform-tools
BUILDTOOLS=$ANDROID_HOME/build-tools/20.0.0

#AVD Path
#EMULATORTASK=$EMULATORPATH/emulator-arm
EMULATORTASK=$EMULATORPATH/emulator
AVDNAME=gui-ripper
ANDROIDCONF=/home/vagrant/.android
SNAPSHOTPATH=$ANDROIDCONF/avd/$AVDNAME.avd/snapshots.img

#App Information
#APKPATH=apks/tomdroid-0.7.5.apk
APKPATH=$3
#APPPACKAGE=org.tomdroid
APPPACKAGE=`aapt dump badging $APKPATH | grep package | awk -F"'" '{print $2}'`
#CLASSPACKAGE=org.tomdroid.ui.Tomdroid
CLASSPACKAGE=`aapt dump badging $APKPATH | grep launchable-activity | awk -F"'" '{print $2}'`
DEVICEPATH=/data/data/$APPPACKAGE/files

echo Testing APK $APKPATH package=$APPPACKAGE class=$CLASSPACKAGE


#Output Experiment Path
EXPPATH=$TOOLDIR/output-exp
COVERAGEPATH=$EXPPATH/coverage
FILESPATH=$EXPPATH/files
RESTOREPATH=$EXPPATH/restore
SCREENSHOTSPATH=$EXPPATH/screenshots

#Tool Information
#ROOT_DIR=/vagrant/guiripper/GuiRipperV1.1
ROOT_DIR=$TOOLDIR
BATCHPATH=$ROOT_DIR/batch
DATAPATH=$ROOT_DIR/data
TOOLSPATH=$ROOT_DIR/tools
SMALIPATH=$TOOLSPATH/smali

TESTPACKAGE=it.unina.androidripper
RIPPERPATH=/data/data/$TESTPACKAGE/files

# random | systematic
EXPLORE=$2

if [ "$2" == "random" ]; then
  TESTCLASS=guitree.NomadEngine
  SPLIT_CODE=1
else
  TESTCLASS=guitree.GuiTreeEngine
  SPLIT_CODE=0
fi

# ifeq ($EXPLORE,random)
# TESTCLASS=guitree.NomadEngine
# else
# TESTCLASS=guitree.GuiTreeEngine
# endif

## Set the number of events to a high number, and then invoke this script with a timeout of 1 hour.
NUM_EVENTS=50000000

case  $1  in

################################################################################
  prepare)
  echo Running firstBoot
  $EMULATORTASK -avd $AVDNAME -partition-size 512 -snapshot $SNAPSHOTPATH -no-snapshot-load -wipe-data &
  $ROOT_DIR/waitForEmu.sh  
#  ;;
#
################################################################################
#  installerAPK)
  echo Running Installer APK
  rm -rf $EXPPATH/*
  mkdir -p $COVERAGEPATH
  mkdir -p $RESTOREPATH
  mkdir -p $FILESPATH
  mkdir -p $SCREENSHOTSPATH
  rm -rf $TOOLSPATH/diet
  rm -rf $DATAPATH/*.apk
  rm -rf $DATAPATH/preferences.xml
  rm -rf $SMALIPATH/build/*

  echo "Installing the packages on the virtual device..."
  $PLATFORMPATH/adb kill-server
  sleep 5
  $PLATFORMPATH/adb devices
  sleep 5
  $JAVA_CMD -jar $TOOLSPATH/Retarget.jar $SMALIPATH/AndroidManifest.xml $APPPACKAGE
  $JAVA_CMD -jar $TOOLSPATH/apktool.jar b $TOOLSPATH/smali $DATAPATH/crawler.apk
  $JARSIGNER_CMD -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore $ANDROIDCONF/debug.keystore -storepass android -keypass android $DATAPATH/crawler.apk androiddebugkey
  $BUILDTOOLS/zipalign 4 $DATAPATH/crawler.apk $DATAPATH/ripper.apk
  mkdir $DATAPATH/temp
  cp $APKPATH $DATAPATH/APP.apk
  unzip $DATAPATH/APP.apk -d $DATAPATH/temp
  rm -rf $DATAPATH/temp/META-INF
  rm $DATAPATH/APP.apk
  cd $DATAPATH/temp; zip -r $DATAPATH/APP.apk *
  cd $DATAPATH
  rm -rf $DATAPATH/temp
  $JARSIGNER_CMD -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore $ANDROIDCONF/debug.keystore -storepass android -keypass android $DATAPATH/APP.apk androiddebugkey
  $BUILDTOOLS/zipalign 4 $DATAPATH/APP.apk $DATAPATH/AUT.apk

  $PLATFORMPATH/adb install -r $DATAPATH/AUT.apk
  $PLATFORMPATH/adb install -r $DATAPATH/ripper.apk > $EXPPATH/building.txt

  $PLATFORMPATH/adb shell mkdir $DEVICEPATH
  $PLATFORMPATH/adb shell chmod 777 $DEVICEPATH

  $PLATFORMPATH/adb shell mkdir $RIPPERPATH
  $PLATFORMPATH/adb shell chmod 777 $RIPPERPATH

  cp $DATAPATH/preferences_$EXPLORE.xml $DATAPATH/preferences.xml
  $JAVA_CMD -jar $TOOLSPATH/PreferenceEditor.jar $DATAPATH/preferences.xml retarget $APPPACKAGE $CLASSPACKAGE

  $PLATFORMPATH/adb push $DATAPATH/preferences.xml $RIPPERPATH/preferences.xml
  sleep 5

  $JAVA_CMD -jar $TOOLSPATH/BuildControl.jar $EXPPATH/building.txt
  rm -rf $DATAPATH/*.apk
  echo "Deploy Completed"

  echo "Preparation successful. Shutting down emulator"
  adb emu kill
  ;;

################################################################################
  createSnapshot)
  $EMULATORTASK -avd $AVDNAME -partition-size 512 -snapshot $SNAPSHOTPATH &
  $ROOT_DIR/waitForEmu.sh
  $PLATFORMPATH/adb shell chmod 777 $RIPPERPATH
  $PLATFORMPATH/adb shell rm $RIPPERPATH/*
  ;;

################################################################################
  ripper)
  echo Running Ripper
  extCounter=1
  #echo $extCounter
  echo "** Start Random Ripping"
  while true; do
    $PLATFORMPATH/adb start-server
    $EMULATORTASK -avd $AVDNAME -partition-size 512 -snapshot $SNAPSHOTPATH -no-snapshot-save &
    #sleep $(WAITFORAVD)
    $ROOT_DIR/waitForEmu.sh
    mkdir -p $EXPPATH
    $PLATFORMPATH/adb logcat >> $EXPPATH/log-all.txt &
    $PLATFORMPATH/adb logcat androidripper:i AndroidRuntime:e *:s >> $EXPPATH/log-filtered.txt &
    sleep 5
    mkdir -p $FILESPATH/$extCounter
    mkdir -p $RESTOREPATH/$extCounter
    mkdir -p $SCREENSHOTSPATH/$extCounter
    mkdir -p $COVERAGEPATH/$extCounter
    echo "Playing Session $extCounter"
    echo "Playing Session $extCounter" >> $EXPPATH/test.txt
    echo ""
    $JAVA_CMD -jar $TOOLSPATH/PreferenceEditor.jar $DATAPATH/preferences.xml randomize $NUM_EVENTS >> $EXPPATH/test.txt
    echo "changing prefs"
    $PLATFORMPATH/adb shell rm $RIPPERPATH/*
    $PLATFORMPATH/adb push $DATAPATH/preferences.xml $RIPPERPATH/preferences.xml

    echo "unlock device"
    $PLATFORMPATH/adb shell input keyevent 82
    sleep 5
    
    echo "running instr"
    $PLATFORMPATH/adb shell am instrument -w -e coverage false -e class $TESTPACKAGE.$TESTCLASS \
                                  $TESTPACKAGE/android.test.InstrumentationTestRunner >> $EXPPATH/test.txt
    if `ls $FILESPATH/$extCounter/*.xml  &> /dev/null` ; then \
      mv $FILESPATH/$extCounter/*.xml $RESTOREPATH/$extCounter/; \
      mv $FILESPATH/$extCounter/*.bak $RESTOREPATH/$extCounter/; \
      mv $FILESPATH/$extCounter/*.obj $RESTOREPATH/$extCounter/; \
      mv $FILESPATH/$extCounter/*.txt $RESTOREPATH/$extCounter/; \
    fi
    $PLATFORMPATH/adb pull $DEVICEPATH $FILESPATH/$extCounter
 
    echo "copy coverage for run" $extCounter
    adb shell am broadcast -a edu.gatech.m3.emma.COLLECT_COVERAGE
    adb pull /mnt/sdcard/coverage.ec $COVERAGEPATH/$extCounter/coverage.ec   

    if [ -f $FILESPATH/*.jpg ] ; then \
      cp $FILESPATH/*.jpg $SCREENSHOTSPATH
    fi

    if [ -f $FILESPATH/activities.xml ] ; then \
      # Activity split
      #cd $TOOLSPATH
      if [ "$2" == "random" ]; then \
        SPLIT_CODE=$extCounter
      fi
      $JAVA_CMD -jar $TOOLSPATH/GuiTSplitter.jar $FILESPATH $SPLIT_CODE
      $JAVA_CMD -jar $TOOLSPATH/ActTSplitter.jar $FILESPATH $SPLIT_CODE
      $JAVA_CMD -jar $TOOLSPATH/TasklistDiet.jar $FILESPATH $DATAPATH/preferences.xml 
    fi

    $PLATFORMPATH/adb emu kill
    sleep 5

    rm -rf $EXPPATH/temp.txt
    echo "End of Session $extCounter"
    echo "End of Session $extCounter" >> $EXPPATH/test.txt
    extCounter=$((extCounter+1))

    if [ -f $FILESPATH/$extCounter/closed.txt ] ; then \
      echo "** Crawling finished"; \
      $PLATFORMPATH/adb kill-server; \
      exit
    fi

    if [ ! -f $FILESPATH/$extCounter/parameters.obj ] ; then \
      cp $RESTOREPATH/$extCounter/parameters.obj $FILESPATH/$extCounter/parameters.obj
    fi

    if [ ! -f $FILESPATH/$extCounter/tasklist.xml ] ; then \
      cp $RESTOREPATH/$extCounter/tasklist.xml $FILESPATH/$extCounter/tasklist.xml
    fi

    $PLATFORMPATH/adb push $FILESPATH/$extCounter $DEVICEPATH
  done 
 
  ;;

################################################################################
  log)
  $PLATFORMPATH/adb logcat >> $EXPPATH/log.txt &
  ;;

################################################################################
  logf)
  $PLATFORMPATH/adb logcat androidripper:i AndroidRuntime:e *:s >> $EXPPATH/log.txt &
  ;;

################################################################################
  close)
  $PLATFORMPATH/adb kill-server
  ;;

################################################################################
  tasklist)
  adb push $RESTOREPATH $DEVICEPATH
  if ls $TOOLSPATH/diet/tasklistdiet_bkp.xml $> /dev/null; then \
    cp $TOOLSPATH/diet/tasklistdiet_bkp.xml $TOOLSPATH/diet/tasklist_diet.xml; \
  fi
  ;;

################################################################################
  shutdown)
  adb emu kill
  ;;
################################################################################
  *)
  echo "No target specified. Targets in order: prepare <strategy> <apk>, ripper <strategy> <apk>, etc"
  echo "strategy = random or systematic"
  ;;

esac
