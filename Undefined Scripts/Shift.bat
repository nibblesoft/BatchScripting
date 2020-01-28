@ECHO OFF
CLS
REM Given %1=the, %2=quick, %3=brown
REM SHIFT
REM will result in %1=quick, %2=brown
REM A second
REM SHIFT
REM will result in %1=brown
REM Given %1=the, %2=quick, %3=brown, %4=fox
REM SHIFT /2
REM will result in %1=the, %2=brown, %3=fox
REM Parse Command Line Arguments

:start
if "%1"=="" (goto :main)

REM Do whatever with token %1
Echo [%1]

REM Shift %2 into %1
SHIFT

goto :start
:main
REM