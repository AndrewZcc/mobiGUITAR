@echo off
@set TEMPORARYPATH="%TEMP%\AndroidEmulator\*.*"
@set EMULATORTASK=emulator-arm.exe

taskkill /F /IM %EMULATORTASK% /T > NUL
del /S /Q /F %TEMPORARYPATH%  > NUL
adb kill-server  > NUL

taskkill /F /IM adb.exe /T > NUL
taskkill /F /IM java.exe /T > NUL