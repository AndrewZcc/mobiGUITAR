@echo off
REM External parameters:
REM %1 = AVD Name
REM %2 = A.U.T. source path or apk path
REM %3 = A.U.T. package
REM %4 = A.U.T. class
REM %5 = Output results path
REM %6 = Wait for start "logcat"
REM If new parameters have to be added, the calls to init.bat must be extended e.g.
REM call "%~dp0\init.bat"  %1 %2 %3 %4 %5 %6

REM System Path
@set EMULATORPATH="%ANDROID_HOME%\tools"
@set PLATFORMPATH="%ANDROID_HOME%\platform-tools"
@set TEMPORARYPATH="%TEMP%\AndroidEmulator\*.*"

REM AVD Path
@set EMULATORTASK=emulator-arm.exe
@set EMMA=java -cp %EMULATORPATH%\lib\emma_device.jar emma
@set AVDNAME=%1
@set SNAPSHOTPATH="%USERPROFILE%\.android\avd\%AVDNAME%.avd\snapshots.img"

REM App Information
@set APKPATH=%2
@set APPPACKAGE=%3
@set CLASSPACKAGE=%4
@set DEVICEPATH=/data/data/%APPPACKAGE%/files

REM Output Experiment Path
@set EXPPATH=%5
@set COVERAGEPATH=%EXPPATH%\coverage
@set FILESPATH=%EXPPATH%\files
@set RESTOREPATH=%EXPPATH%\restore
@set SCREENSHOTSPATH=%EXPPATH%\screenshots

REM Tool Information
@set BATCHPATH="%~dp0"
@set DATAPATH="%~dp0\..\data"
@set TOOLSPATH="%~dp0\..\tools"
@set SMALIPATH=%TOOLSPATH%\smali

@set TESTPACKAGE=it.unina.androidripper
@set RIPPERPATH=/data/data/%TESTPACKAGE%/files
@set WAITFORAVD=%6