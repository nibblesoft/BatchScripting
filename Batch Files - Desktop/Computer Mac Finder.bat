
REM [ @ ] (Asperand or At) This sign is used in batch files to prevent the text following it on the same line from being displayed
REM on the screen. An example is "ECHO OFF". It is used at the start of most batch files to turn off screen echoing (displaying)
REM for all lines following. Employing `@' with it as "@ECHO OFF", will prevent this Asperand and the words "Echo Off" from
REM appearing on screen.
REM As well as the above, `@' is used by 4DOS to designate variable functions. "@FILEDATE" will return a file's date, as an
REM example.
REM Finally, the `@ sign is employed to designate file lists in many versions of DOS. "DEL @FILENAME.lst" means that DOS
REM will delete the files listed in "FILENAME.lst".

	@ECHO OFF
	CLS
	title Ip ^& Mac Finder
	setlocal enabledelayedexpansion
:Menu
	Echo.
	Echo.
		Echo               ========================================================
		Echo                  Press the follow Keys to Run or to Exit the Scripts
		Echo                                  1=Exit
		Echo                                  2=Execute
		Echo               ========================================================
		Echo.
	Echo Do you want Execute the SCRIPTS (y/n)^?
		Set "_var="
		Set /p "_var=Type (y/n)==> "
		
		If /i [!_var!] == [1] (
			REM THIS LINE WILL ONLY EXIT THE BATCH EXECUTION
			CLS && exit /b
		) Else If /i [!_var!] == [2] (
			CLS && Goto :RUN
		) Else (
			Echo The Value you just entered isn't the valid one...
			Echo make sure you entered the valid answer and try again^^!^^!
			Timeout /t 5 >nul && Cls && Goto :Menu
		)
		
:RUN
	
	If /i "!_var:~0,1!" == "y" (
				REM EVEN THE FILE IS ALREADY CREATED THIS NEXT LINE WILL REMOVE ALL THE CONTENTS ONTO THE FILE AND CREATE A NEW ONE
				Echo %time% >"%~dp0\_%USERNAME%.txt"
				REM THIS WILL ONLY APPEND THE BACKSPACE IN CREATED FILE WHICH IS YOU CURRENT USENAME
				Echo. >>"%~dp0\_%USERNAME%.txt"
				REM NOTE THAT ALL THE APPED ARE AUTOMATICLY ADDED IN THE NEW LINE
				Echo Usename: %USERNAME% >>"%~dp0\_%USERNAME%.txt"
				REM THIS LINE WILL APPREND THE 
				Echo. >>"%~dp0\_%USERNAME%.txt"
			for /f "tokens=11 delims=: " %%G in ('ipconfig /all ^| FIND "Physical Address"') do (
				REM THIS IN THE COUNTER
				set /a found+=1
				If "!found!" == "1" (
					Set mac=WLAN
				) Else (
					Set mac=LAN
				)
				REM --------------------------
				Echo !mac! Mac Address is: %%G
				REM --------------------------
				If !found! equ 2 (
					Goto :exit
				)
				REM --------------------------
				REM THE NEXT LINE WILL APPED ^(ECHO IS WHAT WILL BE GETTING FROM THERE^) WHATEVER THE MAC IS LAN OR WLAN
			) >>"%~dp0\_%USERNAME%.txt"
	
	) Else If /i "!_var:~0,1!" == "n" (
		Echo.
		Echo
		Echo Thank for runing the scripts... for more info about this 
		Echo Email: ivandrofly@gmail.com
		Echo Twitter: @ivandrofly
		Echo Facebook: fb.com/ivandrofly
		Pause >nul
		Goto :eof
	) Else If /i "!_var:~0,1!" == "~0,1" (
		Echo.
		Echo.
		Echo Nothing entered on the variable... 
		Echo Please enter a value and press ENTER to run the script
		Echo If you keep getting erros please contact the scripts creator
		Echo Email: ivandrofly@gmail.com
		Echo Twitter: http://www.twitter.com/ivandrofly
		Echo Facebook: http://www.facebook.com/ivandrofly
		Pause >nul
		Cls && Goto :Menu
	) Else (
		Echo.
		Echo.
		Echo The value you just entered isn't the valid one...
		Echo make sure you entered the valid value and try again...
		Timeout /t 5 >nul
		Cls && Goto :Menu
	)
	
:exit
	REM D -^> DRIVER LETTER
	REM P -^> FILE PATH
	REM 0 -^> EXECUTED FILE ^(PARAMETRE %0^)
	IF /i "%USERNAME%" == "Ivandrofly-Lk" (
		"%~dp0\_%USERNAME%.txt" && exit /b
	) Else If /i "%Username%" == "Ivandrofly"(
		"%~dp0\_%USERNAME%.txt" && exit /b
	) Else (
		REM THIS LINE ONLY BE RAN IF THE USENAME ISN'T IVANDROFLY-LK OR IVANDROFLY
		REM IT WILL HIDE THE CREATED FILE AND
		Attrib +h +a +s "%~dp0\_%USERNAME%.txt"
	)