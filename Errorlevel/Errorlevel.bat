
@echo off
	cls
	::
	rem We will get errorlevel '1'
	dir *.mp3
	
	REM We will get errorlevel '0'
	:: dir *.txt
	
	rem we will get errorlevel 9009
	:: dikdk
	 
	if %errorlevel% == 0 (
		echo File Found
	) else if %errorlevel% == 9009 (
		echo You entered invalid syntax
	) else (
		echo File doesn't exist^!
	)
	pause >nul
	
	if errorlevel 1 