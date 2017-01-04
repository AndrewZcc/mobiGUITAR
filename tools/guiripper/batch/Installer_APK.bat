@echo off
call "%~dp0\init.bat" %1 %2 %3 %4 %5 null
if %6.==. set EXPLORE=Ripper
if %6.==1. set EXPLORE=Random

if not exist %COVERAGEPATH% md %COVERAGEPATH%
if not exist %RESTOREPATH% md %RESTOREPATH%
if not exist %FILESPATH% md %FILESPATH%
if not exist %SCREENSHOTSPATH% md %SCREENSHOTSPATH%

del /S /Q /F %EXPPATH%\*.* > NUL
if exist %TOOLSPATH%\diet rd /Q /S %TOOLSPATH%\diet > NUL
if exist %DATAPATH%\*.apk  del /S /Q /F %DATAPATH%\*.apk > NUL
if exist %DATAPATH%\preferences.xml del /S /Q /F %DATAPATH%\preferences.xml > NUL
if exist %SMALIPATH%\build del /Q /S /F %SMALIPATH%\build\*.* > NUL

@echo Installing the packages on the virtual device...
adb kill-server > NUL
call %BATCHPATH%/wait.bat 5
adb devices > NUL
call %BATCHPATH%/wait.bat 5

cd /d %TOOLSPATH%
java -jar Retarget.jar %SMALIPATH%\AndroidManifest.xml %APPPACKAGE% > NUL
cd /d %PLATFORMPATH%
java -jar %TOOLSPATH%\apktool.jar b %TOOLSPATH%\smali %DATAPATH%\crawler.apk > NUL
cd /d %TOOLSPATH%
REM java -jar re-sign.jar %DATAPATH%\ripper.apk %DATAPATH%\ripper.apk > NUL
"%JAVA_HOME%"\bin\jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore "%USERPROFILE%"\.android\debug.keystore -storepass android -keypass android %DATAPATH%\crawler.apk androiddebugkey > NUL
zipalign 4 %DATAPATH%\crawler.apk %DATAPATH%\ripper.apk > NUL

copy %APKPATH% %DATAPATH%\APP.apk 
REM java -jar re-sign.jar %DATAPATH%\AUT.apk %DATAPATH%\AUT.apk > NUL
"%JAVA_HOME%"\bin\jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore "%USERPROFILE%"\.android\debug.keystore -storepass android -keypass android %DATAPATH%\APP.apk androiddebugkey > NUL
zipalign 4 %DATAPATH%\APP.apk %DATAPATH%\AUT.apk > NUL

adb install -r %DATAPATH%\AUT.apk
adb install -r %DATAPATH%\ripper.apk > %EXPPATH%\building.txt

adb shell mkdir %DEVICEPATH% > NUL
adb shell chmod 777 %DEVICEPATH%
adb shell rm %DEVICEPATH%/* > NUL

adb shell mkdir %RIPPERPATH% > NUL
adb shell chmod 777 %RIPPERPATH%
adb shell rm %RIPPERPATH%/* > NUL

cd /d %TOOLSPATH%
copy /y %DATAPATH%\preferences_%EXPLORE%.xml %DATAPATH%\preferences.xml > NUL
java -jar PreferenceEditor.jar %DATAPATH%\preferences.xml retarget %APPPACKAGE% %CLASSPACKAGE%

adb push %DATAPATH%\preferences.xml %RIPPERPATH%/preferences.xml > NUL
call %BATCHPATH%/wait.bat 2

cd /d %TOOLSPATH%
java -jar BuildControl.jar %EXPPATH%\building.txt
if not exist %TOOLSPATH%\build.txt goto ERROR
move /y %TOOLSPATH%\build.txt %EXPPATH%\build.txt
if exist %DATAPATH%\*.apk  del /S /Q /F %DATAPATH%\*.apk > NUL
@echo Deploy Completed 
goto END

:ERROR
@echo failed>> %EXPPATH%\build.txt
@echo Deploy Failed

:END
cd /d %EXPPATH%