@echo off
call "%~dp0\init.bat"  %1 null null null null null
del /S /Q /F %TEMPORARYPATH%
start /min "emulator" CMD /c call %BATCHPATH%/avdForSnapshot.bat

call %BATCHPATH%/wait.bat 40
adb shell chmod 777 %RIPPERPATH% > NUL
adb shell rm %RIPPERPATH%/*  > NUL
adb push %DATAPATH%\preferences.xml %RIPPERPATH%/preferences.xml  > NUL