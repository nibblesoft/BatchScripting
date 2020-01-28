
@echo off
	cls
:menu
	title total files in computer
	setlocal enabledelayedexpansion
	echo.
	echo.
	
	set /p ext="Type The file extension and press enter: "
	set /p driver="Enter the driver letter: "
		
		set /a "counter=0"
		rem ^^!^^! will not work as variable in for /r command
		for /r "%driver%:\" %%G in ("*.!ext!") do (
			set /a counter += 1
		)
		
	echo.
	echo You have [!counter! - %ext%] in you Pc
	pause >nul
	cls
goto :menu