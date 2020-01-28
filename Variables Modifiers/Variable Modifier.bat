@echo off
	cls
	setlocal enabledelayedexpansion
	REM Check what label do you want to goto
	goto :menu2
	
	:menu
	title Menu 1
	echo.
	echo.
	set var=
	set /p var="Enter --->: "
		echo !var:~0,1!
		pause >nul
		REM %VAR:~0,1% --> WORKS
		REM !VAR:~0,1! --> DOESN'T WORKS
		if /i %var:~0,1% == Y (
			echo you entered yes
			pause >nul
			cls
			goto :menu
		) else if /i %var:~0,1% == N (
			echo you entered no
			pause >nul
			cls
			goto :menu
		) else (
			echo you entered Invalid value
			pause >nul
			cls
			goto :menu
		)
		
	:menu2
	title Menu 2
	echo.
	echo.
	set var=
	set /p var="Enter --->: "
		echo !var:~0,1!
		pause >nul
		REM %VAR:~0,1% --> WORKS
		REM !VAR:~0,1! --> DOESN'T WORKS
		if /i "!var:~0,1!" == "Y" (
			echo you entered yes
			pause >nul
			cls
			goto :menu
		) else if /i "!var:~0,1!" == "N" (
			echo you entered no
			pause >nul
			cls
			goto :menu
		) else (
			echo you entered Invalid value
			pause >nul
			cls
			goto :menu
		)