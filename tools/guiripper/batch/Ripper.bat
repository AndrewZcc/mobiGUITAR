@echo off
call "%~dp0\init.bat"  %1 null %2 null %3 %4
@set TESTCLASS=guitree.GuiTreeEngine
@set counter=-1
if exist %EXPPATH%\ripper.txt del /Q /S /F %EXPPATH%\ripper.txt
@echo.
@echo Start Systematic Ripping

adb start-server > NUL
start /min "emulator" CMD /c  call %BATCHPATH%/emulator.bat
call %BATCHPATH%/wait.bat %WAITFORAVD%

start /min "logcat" CMD /c  call %BATCHPATH%/log.bat
start /min "logcat_filtered" CMD /c  call %BATCHPATH%/logf.bat
call %BATCHPATH%/wait.bat 2

if %5 EQU 0 goto CRAWL
adb push %RESTOREPATH% %DEVICEPATH%
set /A C_C_TEMP="%5"*1
set counter=%C_C_TEMP%
if exist %TOOLSPATH%\diet\tasklistdiet_bkp.xml copy /Y %TOOLSPATH%\diet\tasklistdiet_bkp.xml %TOOLSPATH%\diet\tasklist_diet.xml

:CRAWL

@set /a counter=%counter%+1
@echo.
@echo Playing Trace %counter%
@echo Playing Trace %counter% >> %EXPPATH%\test.txt
@echo.

adb shell am instrument -w -e coverage true -e class %TESTPACKAGE%.%TESTCLASS% %TESTPACKAGE%/android.test.InstrumentationTestRunner >> %EXPPATH%\test.txt

if exist %FILESPATH%\*.xml MOVE /Y %FILESPATH%\*.xml %RESTOREPATH% > NUL
if exist %FILESPATH%\*.bak MOVE /Y %FILESPATH%\*.bak %RESTOREPATH% > NUL
if exist %FILESPATH%\*.obj MOVE /Y %FILESPATH%\*.obj %RESTOREPATH% > NUL
if exist %FILESPATH%\*.txt MOVE /Y %FILESPATH%\*.txt %RESTOREPATH% > NUL

adb pull %DEVICEPATH% %FILESPATH% > NUL

if exist %FILESPATH%\coverage.ec MOVE /Y %FILESPATH%\coverage.ec %COVERAGEPATH%/coverage%counter%.ec
if exist %FILESPATH%\*.jpg MOVE /Y %FILESPATH%\*.jpg %SCREENSHOTSPATH%

taskkill /F /IM %EMULATORTASK%
call %BATCHPATH%/wait.bat 2

del /S /Q /F %TEMPORARYPATH%

if exist %FILESPATH%\activities.xml goto TASK
REM if exist %FILESPATH%\parameters.obj goto TASK

copy /Y %RESTOREPATH%\*.xml %FILESPATH%\*.xml  > NUL
copy /Y %RESTOREPATH%\*.bak %FILESPATH%\*.bak  > NUL
copy /Y %RESTOREPATH%\*.obj %FILESPATH%\*.obj > NUL
copy /Y %RESTOREPATH%\*.txt %FILESPATH%\*.txt  > NUL

@echo AVD slowdown >> %EXPPATH%\test.txt
@echo.
@echo End of Trace %counter%
@echo End of Trace %counter% >> %EXPPATH%\test.txt
@echo.

@set /a counter=%counter%-1
goto AFTERTASK

:TASK
cd /d %TOOLSPATH%
if exist %TOOLSPATH%\diet\tasklist_diet.xml copy /Y %TOOLSPATH%\diet\tasklist_diet.xml %TOOLSPATH%\diet\tasklistdiet_bkp.xml
java -jar GuiTSplitter.jar %FILESPATH% 0
java -jar TasklistDiet.jar %FILESPATH% %DATAPATH%\preferences.xml

cd /d %COVERAGEPATH%
java -jar %TOOLSPATH%\IncrementalCoverage.jar 0
if exist Copertura.bat  call Copertura.bat >> %EXPPATH%\temp.txt
if exist %EXPPATH%\temp.txt del /Q /S /F %EXPPATH%\temp.txt > NUL
java -jar %TOOLSPATH%\CoverageTextParsing.jar coverage.txt >> %EXPPATH%\test.txt

@echo.
@echo End of Trace %counter%
@echo End of Trace %counter% >> %EXPPATH%\test.txt
@echo.

:AFTERTASK
if not exist %FILESPATH%\tasklist.xml goto END
if exist %FILESPATH%\closed.txt goto END

start /min "emulator" CMD /c  call %BATCHPATH%/emulator.bat
call %BATCHPATH%/wait.bat %WAITFORAVD%
start /min "logcat" CMD /c  call %BATCHPATH%/log.bat
start /min "logcat_filtered" CMD /c  call %BATCHPATH%/logf.bat
call %BATCHPATH%/wait.bat 2

adb push %FILESPATH% %DEVICEPATH% > NUL

goto CRAWL

:END

cd /d %TOOLSPATH%
java -jar GuiTMerger.jar %FILESPATH% 0

@echo.
@echo Ripper Systematic is DONE
@echo Ripper Systematic is DONE >> %EXPPATH%\test.txt
@echo done> %EXPPATH%\ripper.txt