
@echo off
cls
goto :LABEL_2
setlocal ENABLEDELAYEDEXPANSION

:LABEL_1

:: TO SHOW '!' WHILE  'ENABLEDELAYEDEXPANSION' IS ENABLED WE NEED TO USE '^^!'
set level1=Hello^^!
:: LEVEL1 = HELLO
set level2=!level1!
:: LEVEL2 = HELLO
CALL ECHO !level2!

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:LABEL_2

:: IF WE AIN'T USING 'ENABLEDELAYEDEXPANSION' IT NOT NEEDED TO USE '^^!'
set level1=Hello!
set level2=level1
CALL ECHO %%%level2%%%