@echo off
	cls
	:menu
	setlocal ENABLEDELAYEDEXPANSION
	set /p name="Enter you name: "
		rem Example Ivandro Ismael
	
		if "!name:~-6,6!" == "Ismael" (
			rem This line will raplace Ivandro --> Ismael Resultat'll be : Ismael Ismael
			call set name=%%name:%name:~0,7%=%name:~-6,6%%%
			Rem set name=!!name:%name:~0,7%=%name:~-6,6%!!
			
			rem THIS IS FOR ENABLEDELAYEDEXPANSION
			rem echo !name!
			
			call :named
			pause >nul
		) else (
			echo invalid
			goto :menu
		)
		
		goto :eof
		
		rem this label is for variable without enabledelayedexpansion
	:named
		echo %name%
		REM THIS LINE WILL AUTOMATIC GOTO :EOF
		pause >nul