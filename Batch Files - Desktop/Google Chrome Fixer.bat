
@Echo off
	Cls
	setlocal EnableDelayedExpansion
	:menu
	title Google Chrome Fixer
	Echo.
	Echo.
	Echo You want run this scripts right now?
	REM THIS LINE WILL CLEAR THE VARIABLE 'Y'
	Set "y="
	Set /p y="Enter (y/n): "
		
		if /i "!y:~0,1!" == "n" (
			Echo.
			Echo Thanks for running the scripts
			Echo the scripts is now going to quit in few seconds
			timeout /t 4 /nobreak >nul
			Cls && exit /b
		) Else if /i "!y:~0,1!" == "~0,1" (
			Echo.
			Echo Nothing entered make sure you input a value to
			Echo variable and re-run the scripts
			Pause >nul && Cls && Goto :meny
		) Else if /i "!y:~0,1!" == "y" (
			Echo.
			Echo The scrupts is now going to Remove Google Chrome folder in appdata
			Echo are you sure about it, if you are not the admin don't run this scripts
			Echo make sure you are the Ivandrofly the scripts creator
			Set /p t="Type (y/n): "
				if /i "!t:~0,1!" == "~0,1" (
					Echo.
					Echo Nothing entered make sure you inputa
					Echo value to the variable and try again
				) Else if /i "!t!" == "y" (
					pushd "%appdata%\..\Local\Google\Chrome\User Data\" >nul
						if errorlevel 1 (
							Echo.
							Echo The path wasn't found... make sure you
							Echo have Google Chrome Installed on you pc and
							Echo run the script...
							Pause >nul && Cls && exit /b
						)
				for /f "tokens=* delims=" %%G in ('dir /o') do (
					Echo Found Folder ---^> %%~G
				)
				Pause >nul
				)
		)