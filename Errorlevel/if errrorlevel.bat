
	@echo off
	cls
	setlocal enabledelayedexpansion
	pushd "%~dp0"
	
	set /a i+=2
	
	if !i! equ 1 (
		echo Ivandro
	) else (
		echo Ismael
	)
	
	for %%G in ("Binary_Calculator.bat","testing.bat","test.bat") do (
		fc test.bat %%G >nul
		if errorlevel 1 (
			call :return
			echo Error level Number is - [!error!]
		) else (
			echo there are no errorlevel
		)
	)
	pause > nul
	
	:return
	set error=%errorlevel%
	goto :eof
	