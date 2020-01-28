
@echo off
	cls
:input
set option=
set /p option=Yes or No
if not defined option goto input
if /i "%option:"=%"=="Yes" goto yes
if /i "%option:"=%"=="no" goto no
goto input

:Yes
echo You Entered Yes!
pause
goto :eof

:no
echo You entered no
pause
goto :eof