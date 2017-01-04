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

if exist %APKPATH%\bin del /Q /S /F %APKPATH%\bin\*.* > NUL
if exist %APKPATH%\build.xml del /Q /S /F %APKPATH%\build.xml > NUL
if exist %APKPATH%\local.properties del /Q /S /F %APKPATH%\local.properties > NUL

if exist %SMALIPATH%\bin del /Q /S /F %SMALIPATH%\bin\*.* > NUL
if exist %SMALIPATH%\build.xml del /Q /S /F %SMALIPATH%\build.xml > NUL
if exist %SMALIPATH%\local.properties del /Q /S /F %SMALIPATH%\local.properties > NUL

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
java -jar ARInstrument.jar %APKPATH%\AndroidManifest.xml %APPPACKAGE%
move /y AndroidManifest.xml %APKPATH%\AndroidManifest.xml > NUL

cd /d %APKPATH%
call android update project --path %APKPATH% >> %EXPPATH%\building.txt
call ant emma debug install >> %EXPPATH%\building.txt
adb install -r %DATAPATH%\ripper.apk > NUL

adb shell mkdir %DEVICEPATH% > NUL
adb shell chmod 777 %DEVICEPATH% > NUL
adb shell rm %DEVICEPATH%/* > NUL

adb shell mkdir %RIPPERPATH% > NUL
adb shell chmod 777 %RIPPERPATH% > NUL
adb shell rm %RIPPERPATH%/* > NUL

cd /d %TOOLSPATH%
copy /y %DATAPATH%\preferences_%EXPLORE%.xml %DATAPATH%\preferences.xml > NUL
java -jar PreferenceEditor.jar %DATAPATH%\preferences.xml retarget %APPPACKAGE% %CLASSPACKAGE%

adb push %DATAPATH%\preferences.xml %RIPPERPATH%/preferences.xml > NUL
call %BATCHPATH%/wait.bat 2

cd /d %APKPATH%\bin
if exist coverage.em move coverage.em %COVERAGEPATH% > NUL
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