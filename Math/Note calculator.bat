@echo off
	cls
	setlocal ENABLEDELAYEDEXPANSION 
:menu
	cls
	color 17
	echo This is test
	set /p x=" ENTER THE VALEU HERE: "
	set /p y=" ENTER THE VALEU HERE: "
	set /p k=" ENTER THE VALEU HERE: "
	set /a r=(x + y + k) / 3
	echo !r! & pause >nul
	
	IF '!r!' GTR '9' (
		ECHO.
		ECHO AVARAGE IS !r!
		ECHO YOUR AVERAGE IS GRATTER THAN 9
		ECHO.
		PAUSE >NUL
		GOTO :MENU
	) ELSE (
		ECHO YOUR AVERAGE IS !r!
		ECHO AVERAGE IS LESS THAN 9
		PAUSE >NUL
		GOTO :MENU
	)
		setlocal DISABLEDELAYEDEXPANSION 