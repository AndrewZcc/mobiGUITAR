@echo off
call "%~dp0\init.bat"  %1 null %2 null %3 %4

@set TESTCLASS=guitree.NomadEngine
@set counter=-1
@set extCounter=1

@echo.
@echo Start Random Ripping

:LOOP

adb start-server > NUL
start /min "emulator" CMD /c  call %BATCHPATH%/emulator.bat
call %BATCHPATH%/wait.bat %WAITFORAVD%
start /min "logcat" CMD /c  call %BATCHPATH%/log.bat
start /min "logcat_filtered" CMD /c  call %BATCHPATH%/logf.bat
call %BATCHPATH%/wait.bat 2

mkdir %FILESPATH%\%extCounter%
mkdir %RESTOREPATH%\%extCounter%
mkdir %SCREENSHOTSPATH%\%extCounter%
mkdir %COVERAGEPATH%\%extCounter%
copy /Y %COVERAGEPATH%\coverage.em %COVERAGEPATH%\%extCounter%\coverage.em > NUL

:CRAWL

set /a counter=%counter%+1
@echo.
@echo Playing Session %extCounter%_%counter%
@echo Playing Session %extCounter%_%counter% >> %EXPPATH%\test.txt
@echo.

cd /d %TOOLSPATH%
java -jar PreferenceEditor.jar %DATAPATH%\preferences.xml randomize %random% >> %EXPPATH%\test.txt

adb shell chmod 777 %RIPPERPATH% > NUL
adb shell rm %RIPPERPATH%/*  > NUL
adb push %DATAPATH%\preferences.xml %RIPPERPATH%/preferences.xml  > NUL

adb shell am instrument -w -e coverage true -e class %TESTPACKAGE%.%TESTCLASS% %TESTPACKAGE%/android.test.InstrumentationTestRunner >> %EXPPATH%\test.txt

if exist %FILESPATH%\%extCounter%\*.xml MOVE /Y %FILESPATH%\%extCounter%\*.xml %RESTOREPATH%\%extCounter% > NUL
if exist %FILESPATH%\%extCounter%\*.bak MOVE /Y %FILESPATH%\%extCounter%\*.bak %RESTOREPATH%\%extCounter% > NUL
if exist %FILESPATH%\%extCounter%\*.obj MOVE /Y %FILESPATH%\%extCounter%\*.obj %RESTOREPATH%\%extCounter% > NUL
if exist %FILESPATH%\%extCounter%\*.txt MOVE /Y %FILESPATH%\%extCounter%\*.txt %RESTOREPATH%\%extCounter% > NUL

adb pull %DEVICEPATH% %FILESPATH%\%extCounter% > NUL

if exist %FILESPATH%\%extCounter%\coverage.ec MOVE /Y %FILESPATH%\%extCounter%\coverage.ec %COVERAGEPATH%\%extCounter%\coverage_%extCounter%_%counter%.ec > NUL
if exist %FILESPATH%\%extCounter%\*.jpg MOVE /Y %FILESPATH%\%extCounter%\*.jpg %SCREENSHOTSPATH%\%extCounter% > NUL

taskkill /F /IM %EMULATORTASK%
call %BATCHPATH%/wait.bat 2

del /S /Q /F %TEMPORARYPATH%

cd /d %TOOLSPATH%
java -jar GuiTSplitter.jar %FILESPATH%\%extCounter% %extCounter%
java -jar ActTSplitter.jar %FILESPATH%\%extCounter% %extCounter%

cd /d %COVERAGEPATH%\%extCounter%
java -jar %TOOLSPATH%\IncrementalCoverage.jar %extCounter%
if exist Copertura.bat call Copertura.bat >> %EXPPATH%\temp.txt
if exist %EXPPATH%\temp.txt del /Q /S /F %EXPPATH%\temp.txt > NUL
java -jar %TOOLSPATH%\CoverageTextParsing.jar coverage.txt >> %EXPPATH%\test.txt
java -jar %TOOLSPATH%\CountEvents.jar %EXPPATH%\logf.txt >> %EXPPATH%\test.txt

@echo.
@echo End of Session %extCounter%_%counter%
@echo End of Session %extCounter%_%counter% >> %EXPPATH%\test.txt
@echo.

if exist %FILESPATH%\%extCounter%\closed.txt goto ENDCRAWL
if not exist %FILESPATH%\%extCounter%\parameters.obj copy /Y %RESTOREPATH%\%extCounter%\parameters.obj %FILESPATH%\%extCounter%\parameters.obj > NUL
if not exist %FILESPATH%\%extCounter%\tasklist.xml copy /Y %RESTOREPATH%\%extCounter%\tasklist.xml %FILESPATH%\%extCounter%\tasklist.xml  > NUL

start /min "emulator" CMD /c  call %BATCHPATH%/emulator.bat
call %BATCHPATH%/wait.bat %WAITFORAVD%
start /min "logcat" CMD /c  call %BATCHPATH%/log.bat
start /min "logcat_filtered" CMD /c  call %BATCHPATH%/logf.bat
call %BATCHPATH%/wait.bat 2

adb push %FILESPATH%\%extCounter% %DEVICEPATH% > NUL

goto CRAWL

:ENDCRAWL
adb kill-server  > NUL

cd /d %TOOLSPATH%
java -jar GuiTMerger.jar %FILESPATH%\%extCounter% %extCounter%
java -jar ActTMerger.jar %FILESPATH%\%extCounter% %extCounter%

@echo.
@echo RipperTest_%extCounter% is DONE
@echo RipperTest_%extCounter% is DONE >> %EXPPATH%\test.txt
@echo.

set /a extCounter=%extCounter%+1
if %extCounter% LEQ %5 goto LOOP

@echo.
@echo Random Ripper is DONE
@echo Random Ripper is DONE >> %EXPPATH%\test.txt
@echo.
@echo done> %EXPPATH%\ripper.txt