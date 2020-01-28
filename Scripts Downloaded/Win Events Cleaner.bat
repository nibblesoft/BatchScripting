
REM DOWNLOADED FROM INTERNET AND IMPROVED BY: IVANDRO ISAMEL GOMES JAO
@Echo off
	Cls
	color a
	setlocal enabledelayedexpansion
	Set /a count=0
	:Menu
	Cls
	Echo.
	Echo.
	Echo Do you want to run the scripts^?^^!
	Set /p "x=Enter (y/n): "
	
		If /i "!x:~0,1!" == "y" (
			Cls && Goto :RUN			
		) Else If /i "!x:~0,1!" == "n" (
			Exit /b
		) Else If /i "!x:~0,1!" == "~0,1" (
			Echo.
			Echo.
			Echo Nothing entered on the variable
			Echo make sure you entere a value on the variable and try again
			If '!count!' == '3' (
				Echo.
				Echo All attemps are over
				Echo now the scripts is going to quit
				Timeout /t 5 /nobreak >nul && exit /b
			)
			pause >nul
			Goto :Menu
		) Else (
			Echo.
			Echo The value you entered isn't the valid
			Echo make sure you entered the valid one and re-run the scripts
			Pause >nul && Cls && Goto :Menu
		)
	
	Goto :EOF
	:RUN
	REM I USED USEBACKQ
	REM THIS IS FOR CHEKING THE ADMIN PREVILEG
	FOR /F "skip=1 usebackq" %%V IN (`bcdedit`) DO (
		SET adminTest=%%V
	)
	
	If "!adminTest!" == "Access" (
		Goto noAdmin
	)
	
	REM THIS LINE WILL BE RINNING If THE ABOVE ONE WAS FALSE
	for /F "tokens=*" %%G in ('wevtutil.exe el') DO (
		REM THE "%%G" IS  THE FIRST "ARGUMENT" %1
		call :do_clear "%%G"
	)
	Echo.
	Echo.
	Echo                 ---------^> Script Complete Successfuly ^<---------
	Echo                 Scripts Corrected by: Ivandro Ismael (@Ivandrofly) 
	pause
	
:do_clear
	REM NOTICE THAT THERE ARE A Tilde (swung dash) %~1, IT WILL REMOVE ANY QUOTATION MARK AROUND THE STRINGS
	wevtutil.exe cl %1
	Echo Event Cleaned %~1
	Goto :eof
	
:noAdmin
	Echo.
	Echo You must run as a admin to run this script^^!^^!^^!
	Echo Make sure you are runningthe scripts as ADMIN.
	timeout 10 >nul
	exit /b
