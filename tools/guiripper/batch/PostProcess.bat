@echo off
call "%~dp0\init.bat" null %3 %4 null %1 null
@set OUTPUTPATH=%EXPPATH%\output
if not exist %OUTPUTPATH% md %OUTPUTPATH%
@set COUNTER=1
if exist %EXPPATH%\artifact.txt del /Q /S /F %EXPPATH%\artifact.txt
if exist %EXPPATH%\temp.txt del /Q /S /F %EXPPATH%\temp.txt > NUL
copy /Y %DATAPATH%\preferences.xml %EXPPATH%

cd /d %TOOLSPATH%
java -jar TextParsing.jar %EXPPATH%\test.txt
if exist %TOOLSPATH%\extract.txt move /Y %TOOLSPATH%\extract.txt %OUTPUTPATH%
if exist %TOOLSPATH%\report_slim.txt move /Y %TOOLSPATH%\report_slim.txt %OUTPUTPATH%

if %2. NEQ 0. goto RANDOM

:RIPPER 

cd /d %TOOLSPATH%
if not exist %FILESPATH%\guitree.xml goto NEXT0
java -jar OutputGen.jar %FILESPATH%\guitree.xml %OUTPUTPATH%\TestSuite.java %APPPACKAGE%.test; %OUTPUTPATH%\guitree_efg.xml %OUTPUTPATH%\report.txt %OUTPUTPATH%\guitree.dot %OUTPUTPATH%\guitree_efg.dot

:NEXT0

cd /d %COVERAGEPATH%
if exist coverage.txt del /Q /S /F coverage.txt
java -jar %TOOLSPATH%\CGenerator.jar 0
if not exist Copertura.bat goto END
call Copertura.bat >> %EXPPATH%\temp.txt
move /Y coverage %OUTPUTPATH%
del Copertura.bat

goto END

:RANDOM

md %OUTPUTPATH%\%COUNTER%
if not exist %FILESPATH%\%COUNTER%\guitree.xml goto NEXT1
cd /d %TOOLSPATH%
java -jar OutputGen.jar %FILESPATH%\%COUNTER%\guitree.xml %OUTPUTPATH%\%COUNTER%\TestSuite.java %APPPACKAGE%.test; %OUTPUTPATH%\%COUNTER%\guitree_efg.xml %OUTPUTPATH%\%COUNTER%\report.txt %OUTPUTPATH%\%COUNTER%\guitree.dot %OUTPUTPATH%\%COUNTER%\guitree_efg.dot

:NEXT1

cd /d %COVERAGEPATH%\%COUNTER%
if exist coverage.txt del /Q /S /F coverage.txt
java -jar %TOOLSPATH%\CGenerator.jar %COUNTER%

if not exist Copertura.bat goto COUNT
call Copertura.bat >> %EXPPATH%\temp.txt
move /Y coverage %OUTPUTPATH%\%COUNTER%
del Copertura.bat

:COUNT
set /a COUNTER=%COUNTER%+1
if %COUNTER% LEQ %2 goto RANDOM

:END
if exist %EXPPATH%\temp.txt del /Q /S /F %EXPPATH%\temp.txt > NUL
if exist %RESTOREPATH% rd /Q /S %RESTOREPATH% > NUL
echo artifactdone> %EXPPATH%\artifact.txt