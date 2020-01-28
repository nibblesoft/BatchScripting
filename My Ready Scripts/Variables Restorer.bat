

@Echo OFF && Cls
	Title Enviroment Variables Restorer by: Ivandro Ismael v1.1
	setlocal enabledelayedexpansion
	:menu 
	Cls
	Echo.
	Echo.
	Echo.
	Echo Script created by: Ivandro Ismael
	Echo Do you want to restore all the variables?
		REM THIS LINE WILL REMOVE ANY VARIABLE ASSIGNED INTO IVANDROFLY
		set "ivandrofly="
		set /p ivandrofly="Type yes or no (y/n): "
		Echo !ivandrofly:~-3,3!
			pause >nul
			
			if /i "!ivandrofly:~-3,1!" == "y" (
				REM THIS LINE WILL ADD THE REGISTRIES KEYS TO WINDOWS REGEDIT
				Reg add HKCU\Environment\ /f /v Desktop /t REG_EXPAND_SZ /d %USERPROFILE%\Desktop >nul
				Reg add HKCU\Environment\ /f /v Documents /t REG_EXPAND_SZ /d %USERPROFILE%\Documents >nul
				Reg add HKCU\Environment\ /f /v Pictures /t REG_EXPAND_SZ /d %USERPROFILE%\Pictures >nul
				Reg add HKCU\Environment\ /f /v Videos /t REG_EXPAND_SZ /d %USERPROFILE%\Videos >nul
				Reg add HKCU\Environment\ /f /v Downloads /t REG_EXPAND_SZ /d %USERPROFILE%\Downloads >nul
				
				REM THIS LINE WILL CHECK ERRORLEVEL IF ITS ^>=1
					if not errorlevel  1 (
						Echo.
						Echo Registry Added Successfully
						pause >nul
						Cls && Goto :menu
					) Else (
						Echo.
						Echo A Error has Ocured 
						Echo Checking Errorlevel Fails
						pause >nul
						Cls && Goto :menu
					)
					
			) Else if /i "!ivandrofly:~-3,1!" == "n" (
				REM THIS LINE WILL QUIT THE SCRIPTS
				Goto :eof
				REM THIS IS HOW TO COMPARE THE STATEMENTS
			) Else if /i "!ivandrofly:~-3,1!" == "~3,1" (
				Echo.
				Echo Nothing Entered
				pause >nul
				Cls && Goto :menu
			) Else (
				Echo.
				Echo The value you entered isn't valid
				pause >nul
				Cls && Goto :menu
				
			)
