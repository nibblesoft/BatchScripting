REM Script Created by Ivandro Ismael
@Echo OFF
	Cls
	Title GodMode Maker by: Ivandro Ismael v1.1
	setlocal enabledelayedexpansion
	color 17
	:menu
	Echo.
	Echo.                           ===========================
	Echo                              This is GodMode Creator
	Echo                            By: Ivandro Ismael Gomes Jao
	Echo                          ===============================
	Echo.
	Set "var="
	Set /p var="Do you want to create a GodMode File Type (y/n) ==> "
	
		
		If /i "!var:~0,1!" == "y" (
			REM THIS WILL CREATE THE GODMODE IN SAME WHERE THE SCRITPS WHERE EXECUTED
			md "%~dp0\GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}" 2>nul
			REM THIS LINE WILL CHECK If RETOURN IS >= 1
			REM NOT If ITS = 1
			call :errorlevel
			If !error! gtr 1 (
				Echo.
				Echo GodMode File already exist^^!
				Echo Errorlevel is equal: {%errorlevel%}
				Pause >nul && Cls && Goto :menu
			) Else (
				Echo.
				Echo Godmode has been created successfully
				Pause >nul && Cls && Goto :menu
			)
		) Else If /i "!var:~0,1!" == "n" (
			:_quit
			Set "_quit="
			Echo.
			Echo You have entere 'NO'
			Echo.
				Set /p "_quit= Do you want to quit the Scripts (y/n) ==> "
					If /i "!_quit:~0,1!" == "y" (
						exit /b
					) Else If /i "!_quit:~0,1!" == "n" (
						Cls
						Goto :menu
					) Else (
						Echo.
						Echo The Answer you entered isnot valid make sure you
						Echo Entered the valid one and try again... If you keep getting
						Echo a error please contact the scripts creator... thanks
						Pause >nul && Cls && Goto :_quit
					)
		) Else If /i "!var:~0,1!" == "~0,1" (
			Echo.
			Echo Nothing entered 
			Pause >nul && Cls && Goto :menu
		) Else (
			Echo.
			Echo You Entered Invalid Answer^^! - [!var!]
			Echo.
			Pause >nul && Cls && Goto :menu
		)
REM THIS LINE WILL JUST AFFECT THE VARIABLE ERROR WITH CURRENT ERRORLEVEL
REM AND RETOURN THE RESULTAT TO CALLER PARAMETRES		
:errorlevel
	Set error=%errorlevel%
	Goto :eof