
@echo off
cls
setlocal enabledelayedexpansion
set "var=[whatever]"
echo.!var!
:: This lines will close var
endlocal

:: notice it's out of the localization
echo.var=!var!
pause