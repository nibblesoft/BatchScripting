@ECHO OFF & cls
goto :04
PING -a 192.168.1.2 -n 1 -w 500
FOR /F "tokens=2,3 delims= " %%A IN ('PING -a %1') DO IF "%%B"=="[%1]" SET PC=%%A
SET PC

:: We can use this feature to strip any number of leading spaces from a string:


:01
REM once we use "tokens=1,2" %%G in ('') echo toknes1 -> %%G & token2 -> %%H


:: ASIDE:	WE CAN USE THIS FEATURE TO
:: STRIP ANY NUMBER OF LEADING SPACES FROM A STRING:

:: WILL RETURN SOME STRING (WITHOUT THE LEADING SPACES).
:: AND THIS ISN'T LIMITED TO SPACES:
:: FOR /F "tokens=*" %%A IN ("    some string") DO ECHO.%%A

FOR /F "tokens=* delims=s" %%Z IN ("    some string") DO ECHO.%%Z
pause >nul
goto :01
exit /b

:: WILL RETURN 12
FOR /F "tokens=* delims=0" %%A IN ("00000012") DO ECHO.%%A

:02
FOR /F "tokens=4 delims=," %%G IN ("deposit,$4500,123.4,12-AUG-09") DO @echo Date paid %%G


:03
FOR /F %%G IN ('"C:\program Files\command.exe"') DO ECHO %%G

:04
FOR /F "tokens=1-4" %%G IN ("This is a long sentence") DO @echo %%G %%H %%J

:: will result in the output: This is long