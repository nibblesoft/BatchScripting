	
REM THIS PROGRAM NEEDS ADMINISTRATOR PREVILEGE TO MAKE IT RUN CORRECTLY
	
	@echo off
	cls
	color 0a
	title Ivandrofly
:menu
	cls
	echo pres Q to exit
		echo pi: %pi%
		
	choice /c:1234567890 /n /m  Enter value here (0-9): 
			
	IF ERRORLEVEL ==1 (
		cls
		goto addpi
	)
	IF ERRORLEVEL ==2 (
		cls
	)
	IF ERRORLEVEL ==3 (
		cls
	)
	IF ERRORLEVEL ==4 (
		cls
	)
	IF ERRORLEVEL ==5 (
		cls
	)
	IF ERRORLEVEL ==6 (
		cls
	)
	IF ERRORLEVEL ==7 (
		cls
	)
	IF ERRORLEVEL ==8 (
		cls
	)
	IF ERRORLEVEL ==9 (
		cls
	)
	IF ERRORLEVEL ==10 (
		cls
	)


:1
	echo.
	echo  This is correcte syntaxt
	echo.
	pause >nul
	goto menu
:2
	cls
	echo.
	echo.
	choice /c:yn /n /m  Enter (Y/N): 
	if errorlevel ==1 goto enterpi
	if errorlevel ==2 exit
:3

:4

:5

:6

:7

:8

:9

:10