	REM Exercice Nº3
	
		@echo off
		cls
:menu
		echo What's the correct answer of 5+3=?
		set /p x="Enter: "
		
		REM Begin
			if "%x%" == "8" (
			echo.
			echo Correct answer BRAVO!!!
			echo.
			pause >nul
			cls
			call :menu
		) else if not "%x%" == "8" (
			echo.
			echo Incorrect Try again!!!
			echo.
			pause >nul
			cls
			call :menu
		)
		REM End