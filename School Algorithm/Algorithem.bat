
REM STILL HAVING ERROR

	@echo off
	cls
	:menu
	setlocal enabledelayedexpansion
	cls
		echo Enter a number between (10-20)
		
		set /p x="Enter the number here: "
		
		if !x! lss 10 (
			ECHO.
			echo ENTER INCRESSE THE NUMBER A LITTLE !x!
			pause >nul
			goto :menu
			
		) else if !x! gtr 20 (
			ECHO.
			ECHO FEW DOWN !x!
			echo %errorlevel%
			pause >nul
			GOTO :menu
			
		) else IF %errorlevel% == 1 (
			ECHO.
			REM THIS LINE MAY BE USE TO CORRECT ANSWER
			echo INVALID ANSWER, TRY AGAIN^^! !x!
			pause >nul
			cls
			goto :menu
			
		) else (
		
			ECHO YOU ENTERE CORRECT ANSWER !x!
			PAUSE >NUL
			GOTO :menu
		)
		
REM EQU - equal
REM NEQ - not equal
REM LSS - less than
REM LEQ - less than or equal
REM GTR - greater than
REM GEQ - greater than or equal