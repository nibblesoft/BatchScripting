	
	@echo off
	cls
	setlocal enabledelayedexpansion
	:menu
		set /a "score=0"
	for /l %%A in (1,1,3) do (
			echo.
			echo.
			echo TRY FIND WHATS THE HIDDEN NUMBER^^!
		set /p var="ENTER NUMBER HERE TRY NUMBER %%A: "
				
				call :_Call
				set rand=!rand1:~-2,1!
			if '!var!' == '!rand!' (
				set /a score+=10
				set var1=%random:~-4,1%
				echo.
				echo ^<^<^< You entered Valid Value ^>^>^>
				echo [!var!] == [!rand!]
				echo Bravo ^^!
				echo.
				pause >nul
				cls
			) else (
				echo.
				echo.
				echo [!var!] ^=^= [!rand!]
				echo Incorrect^^!
				echo.
				echo.
				pause >nul
				cls
			)
)
		echo.
		echo =======================
		echo Total Score is: [!score!]
		echo =======================
		echo.
		pause >nul
		ECHO DO YOU WANT TO TRY AGAIN ^(Y/N^)^?
			set /p "_val=: "
				if /i "!_val!" == "y" (
					cls
					goto :menu
				) else (
					cls
					exit /b
				)
:_Call
setlocal
set rand1=%random%%random%
echo %rand1%
pause >nul
goto :eof