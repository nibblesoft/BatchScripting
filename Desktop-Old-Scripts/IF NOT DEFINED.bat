REM THIS IF NOTE DEFINED COMMAND
:LOOP
@echo off
CLS
goto Ivandro
IF DEFINED Date (
	
	ECHO Date IS defined
	) ELSE (
	ECHO Date is NOT defined
	)
	ECHO Date = %Date%
	SET Date
	PAUSE >nul
	CLS

SET Date=Some Other Value
	
	IF DEFINED Date (
	ECHO Date IS defined
	) ELSE (
	ECHO Date is NOT defined
	)
	ECHO Date = %Date%
	SET Date
	PAUSE >nul
	CLS

SET Date=

	IF DEFINED Date (
	ECHO Date IS defined
	) ELSE (
	ECHO Date is NOT defined
	)
	ECHO Date = %Date%
	SET Date
	pause >nul
	
:Ivandro
pause >nul
	set Ivandrofly="c:\users\Ivandrofly\"
	if defined Ivandrofly (
	echo Ivandrofly is defined
	pause >nul
	cls
	goto loop
	) else (
		echo.
		echo.
		set Ivandrofly
		echo.
		echo.
		pause >nul
		goto Ivandro
	)