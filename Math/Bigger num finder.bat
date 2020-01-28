
	@echo off
	cls
	title Bigger num finder
	SETLOCAL ENABLEDELAYEDEXPANSION
	echo.
	echo.
	set /a "max=0"
	echo Type how many times do you want to loop
	set /p looper="Enter your option here and press enter==> "
	
		for /l %%I in (1,1,!looper!) do (
			echo Enter the Number-[%%I]
			set /p num="Type the number here: "
				pause >nul
				if /i !num! gtr !max! (
					echo Bigger
					pause >nul
					set /a "max=!num!"
				) else (
					echo Invalid
					pause >nul
				)
		)
		echo.
		echo The bigger num is !max!
		pause >nul