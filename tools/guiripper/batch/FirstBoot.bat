@echo off
call "%~dp0\init.bat" %1 null null null %2 null
start /min "emulator" CMD /c  call %BATCHPATH%/avdForInstaller.bat
@echo firstboot>> %EXPPATH%\firstboot.txt