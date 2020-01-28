
REM BY IVANDRO ISMAEL
@echo off
	cls
	setlocal enabledelayedexpansion
	title Note Calculator
	echo.
	echo.
	set /p N="Total Students in classroom => "
	set /p S="How many notes do you want to calculate? => "
	REM THIS IS CALLED NET
	
	for /l %%N in (1,1,!N!) do (
			set /a "sum=0"
			echo.
			echo.
		ECHO Enter Note For Student N-%%N
			
			for /l %%I in (1,1,!S!) do (
				echo.
				echo Enter note N-%%I
				set /p note%%I="Type note here=> "
					set /a sum += note%%I
			)
			REM INSIDE OF LOOPER WE MUST USE ESCAPE CHARACTERS '^'
			
			set /a sum=^(!sum!/!S!^)
			echo.
			echo For Student %%N  avarege is: '!sum!'
			set /a total%%N = sum
			pause >nul
			cls
	)
	
	echo.
	echo.
	for /l %%C in (1,1,!N!) do (
		echo.
		echo The Student N-%%C Has average of [!total%%C!]
	)
	
	pause >nul