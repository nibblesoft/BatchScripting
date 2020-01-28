@ECHO off
CLS
SET "PATH=%~dp0;%PATH%"
ECHO %PATH%
ECHO.
CALL :testargs "these are days" "when the brave endure"
GOTO :pauseit
:testargs
:: example: %~i	-	expands %i removing any surrounding quotes (")
SET ARGS=%~1;%~2;%1;%2
ECHO %ARGS%
ECHO.
exit /B 0
:pauseit
pause