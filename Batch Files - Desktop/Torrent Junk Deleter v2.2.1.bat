
Rem torrent files deletor v2.2.1
Rem Author: Ivandro Ismael Gomes jao
Rem No problems by deleting torrent even if they are being in download process
@Echo off
	Cls
	setlocal enabledelayedexpansion
	:Menu
	Cls
	color 07
	Title Torrent Files Remover v2.2.0.1
	Echo.
	Echo.
	Echo. 
	Echo                                 1 = Exit
	Echo                                 2 = Execute
	Echo.
	REM THIS LINE WILL RESET OP VARIABLE
	set "op="
	set /p op="Enter you option here and press ENTER --^> "
		REM THIS SUBSCTING WILL WORK JUST FINE
		REM Echo !op:~!
		REM LIVE WILL CHECK IF OPTION YOU ENTERED IS 1 AND QUIT THE SCRIPTS
		if /i "!op:~!" == "1" (Exit /b)
	
	if defined Appdata (
		if exist "%APPDATA%\Utorrent\" (
			Pushd "%APPDATA%\Utorrent\"
			
			REM NOTE: I CHECKTHE .OLD FILE TOO INSTEAND CHECKING FOR ONLY .torrent
			if exist ".\*.torrent" (
				REM THIS IS THE LINE WHICH WILL DELETE THE TORRENT FILES
				REM IF THERE IS, MAKE SURE YOU HAVE INSTALLED UTORRENT P2P SOFTWARE
				Rem del /a /q ".\*.torrent" >nul 2>&1 & del /a /f /q ".\*.old" >nul 2>&1
				REM del *.torrent, *.old >nul
				Echo ======================================================================
				For %%G In ("*.torrent", "*.old") DO (
					Del "%%G" >nul
					if /i "%%~xG" == ".torrent" (
						REM THIS LINE WILL SHOW UP ONCE A .TORRENT FILE WERE DELETED
						Echo Deleted Torrent File - %%~sG
					) else if /i "%%~xG" == ".old" (
						REM THIS LINE WILL SHOW UP ONCE A .OLD FILE WERE DELETED 
						Echo Deleted Temp File - %%~sG
					)
				)
				Echo ======================================================================
				Rem this will check if the error level is equal 1 or greater than 1
				if not errorlevel 1 (
					Echo.
					Echo Torrent Files Deleted
					Echo No Errorlevel Found
					Pause >nul && Goto :Menu
				) else (
					Echo.
					Echo The are some torrent files is being used
					Echo make sure you are not downloading file
					Pause >nul && Cls && Goto :Menu
				)
			) else (
				Echo.
				Echo There are no torrent files to be deleted
				Echo make sure there are Torrent file and re-run the scripts
				Pause >nul
				Cls && Goto :Exit	
			)
		) else (
			Echo.
			Echo No torrent folder found in your driver
			Echo make sure you have instaled utorrent
			Echo and re-run the scripts
			Pause >nul
			Cls && Goto :Exit
		)
	) else (
		Echo.
		Echo Appdata VARIABLE isn't defined in your pc
		Echo make sure your don't apply any value the
		Echo appdata variable because that is system variable
		Echo it can cause you many problems
		Pause >nul
		Cls && Goto :Menu
		
	)
	REM PROBABIBLY THIS LINES WILL NOT BE RUN
	Echo.
	Echo.
	Echo.
	Echo Out of statements
	Pause >nul
	Goto :eof
	
:Exit
	REM I MUST SKYPE THE & SYMBOL OR IT WILL NOT BE SHOWN IN HERE
	Title Exit ^&^& Cls
	Echo.
	Echo.
	Echo Your are trying to Exit the scripts
	Echo are you sure about it?
	Echo CAPITAL CHAPTER ARE SUPPORTED AS WELL
	Echo ======================================
	Echo.
	set "x="
	set /p x="Type (y/n): "
		
		if /i "!x:~0,1!" == "y" (
			Echo You entered YES
			Echo Thanks for using the scripts 
			Timeout /nobreak /t 4 >nul
			Exit /b
			
		) else if /i "!x:~0,1!" == "n" (
			Echo.
			Echo You entered no the scripts is 
			Echo press any key to re run the scripts
			Pause >nul
			Cls && Goto :Menu
			
			REM THIS IS HOW TO COMPARE THE STATEMENTS
		) else if /i "!x:~0,1!" == "~0,1" (
			Echo.
			Echo Nothing entered on the variable
			Echo input a value to variable
			Echo (Make sure you entered the demanded options)
			Timeout /nobreak /t 3 >nul
			Cls && Goto :Exit
			
		) else (
			Echo.
			Echo This value isn't valid one
			Echo make sure you entered the valid option
			Echo and re run the scripts
			Echo entered value is : --^> !x!
			Pause >nul
			Cls && Goto :Exit
			
		)
		
	Rem crosshair = mira de +