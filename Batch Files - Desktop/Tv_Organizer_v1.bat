

rem the scripts version is v1.7
@Echo off
	Setlocal enabledelayedexpansion
	:menu
	Cls
	Title Tv Series Organizer v1.7
	Echo.
	Echo.
	Echo.
	rem i'll add errorlevel checker for this line
	Pushd "d:\utorrent\" >nul
	
		If %errorlevel% gtr 0 (
			Echo.
			Echo There are no folder in your 'D:' driver names uTorrent
			Echo make sure you have created uTorrent folder in
			Echo you D: driver...
			Pause >nul
			Cls && Exit /b
		)
		
	Echo Note: Only 2, tv seria are defined.
	Echo                      ======================================
	Echo                           1) For Tv-Series Nikita - Defined 
	Echo                           2) For Tv-Series Arrow - Defined
	Echo                           3) For Tv-Serire The Vampire Diaries - undefined 
	Echo                           4) For Tv-Series Spartacus - undefined
	Echo                           5) For Tv-Series Game of Thrones
	Echo                      ======================================
	rem this line will restore the variable 'o' for default value
	Set "o="
	Set /p o="Type (1-9): "
	
		If /i "!o:~0,1!" == "1" (
			Cls
			REM I'LL USE CALL COMMAND INSTEAD GOTO IN ALL STATEMENTS
			goto :nikita
		) Else If /i "!o:~0,1!" == "2" (
			Echo Not defined
			Pause >nul
			REM I'LL USE CALL COMMAND INSTEAD GOTO IN ALL STATEMAENTS
			Cls && goto :arrow
		) Else If /i "!o:~0,1!" == "3" (
			Echo Not defined
			Pause >nul
			Cls && goto :menu
		) Else If /i "!o:~0,1!" == "4" (
			Echo Not defined
			Pause >nul
			Cls && goto :menu
		) Else If /i "!o:~0,1!" == "5" (
			Cls && goto :gameofthrones
			Cls && goto :menu
		) Else If /i "!o:~0,1!" == "7" (
			Echo Not defined
			Cls && goto :menu
		) Else If /i "!o:~0,1!" == "8" (
			Echo Not defined
			Pause >nul
			Cls && goto :menu
		) Else If /i "!o:~0,1!" == "9" (
			Echo Not defined
			Pause >nul
			Cls && goto :menu
			REM THIS IS HOW TO COMPARE VARIABLES
		) Else If /i "!o:~0,1!" == "~0,1" (
			Echo.
			Echo Nothing entered you should entered a
			Echo value to the variable and press entered
			Echo make sure you entered the demanded condition
			Echo ::::::::::::::::::::::::::::::::::::::::::::
			Echo If you still getting errors contact the
			Echo scripts creator: @ivandrofly
			Echo he may know whats is needed to do to correcte the bug
			Echo thanks for ussing the scripts i hope you will e back sooner
			Echo as possible this is Mr: Ivandro Ismael Gomes Jao
			Pause >nul
			Cls
			goto :menu
		) Else (
			Echo.
			Echo The value you entered isn't defined
			Echo make sure you entered valid option
			Echo the option are available above
			Pause >nul
			Cls && goto :menu
		)
	Cls && goto :eof
	
:nikita
	Title Tv Series - Nikita
	Cls
	Echo.
	Echo.
	Echo.
	Echo Type Letter Assigned To Your Driver(HARD DISK DRIVER EXTERN)
	Set "d="
	Echo Note: No colon needed (':')
	Echo.
	Set /p d="Type the letter: "
		
		Pushd "!d!:\"  >nul
		If "!d!" == "" (
			Echo.
			Echo.
			Echo Nothing Entered
			Echo Try again and entered a value to variable
			timeout /nobreak /t 5 >nul
			Cls && goto nikita
		)
		
		If %errorlevel% neq 0 (
			Echo You Get Errorlevel the command can't be executed
			Echo the driver you entered isn't assigned
			Pause >nul
			Cls && goto :menu
		)
		Popd
		
		rem this line will reset the counter variable 'below'
		Set /a "counter=0"
		for /r %%G in ("*nikita*.*") do (
			REM THIS LINE WILL JUST MOVE THE FILE TO NIKITA FOLDER
			move "%%G" "!d!:\Libraries\Tv Series\Nikita\Nikita - Season 3\" >nul
			Set /a counter += 1
		)
		Echo.
		Echo.
		Echo.
		
		If !counter! equ 0 (
			Echo.
			Echo No File Found
			Pause >nul
			Cls && goto :menu
		) Else (
			Echo.
			Echo Total Files Moved [!counter!]
			Pause >nul
			Cls && goto :menu
		)
		Pause >nul
		goto :menu
		
:arrow
	Title Tv Show - Arrow
	Cls
	Echo.
	Echo.
	Echo Type Letter Assigned To Your Driver
	Set "d="
	Set /p d="Type The driver here and press enter: "
		
		Pushd "!d!:\" 
		If %errorlevel% neq 0 (
			Echo You Get Errorlevel the command can't be executed
			Echo the driver you entered isn't assigned
			Pause >nul
			Cls && goto :menu
		)
		Popd
		
		If "!d!" == "" (
			Echo.
			Echo Nothing Entered
			Echo Try again and entered a value to variable
			timeout /nobreak /t 5 >nul
			Cls && goto :arrow
		)
		
		rem this line will reset the counter variable 'below'
		Set /a "counter=0"
		for /r %%G in ("*arrow*.*") do (
			move "%%G" "!d!:\Libraries\Tv Series\arrow\arrow - Season 3\"
			Set /a counter += 1
		)
		Echo.
		Echo.
		
		If !counter! equ 0 (
			Echo.
			Echo No File Found
			Pause >nul
			Cls
			goto :menu
		) Else (
			Echo.
			Echo Total Files Moved [!counter!]
			Pause >nul
			Cls && goto :menu
		)
		
	Echo out of statement
	Pause >nul
	Cls && goto :menu
	
:gameofthrones
	Title Tv Show - Game of Thrones
	Cls
	Echo.
	Echo.
	Echo Type Letter Assigned To Your Driver
	Set "d="
	Set /p d="Type The driver here and press enter: "
		
		Pushd "!d!:\" 
		If %errorlevel% neq 0 (
			Echo You Get Errorlevel the command can't be executed
			Echo the driver you entered isn't assigned
			Pause >nul
			Cls && goto :menu
		)
		Popd
		
		If "!d!" == "" (
			Echo.
			Echo Nothing Entered
			Echo Try again and entered a value to variable
			timeout /nobreak /t 5 >nul
			Cls && goto :gameofthrones
		)
		
		rem this line will reset the counter variable 'below'
		Set /a "counter=0"
		for /r %%G in ("*Game?of?thrones*.*") do (
			rem This line will allow you to move all found game of thrones file to your hard drive externe	
			move "%%G" "!d!:\Libraries\Tv Series\Game Of Thrones\Game Of Thrones Season 3\" >nul
			Set /a counter += 1
		)
		Echo.
		Echo.
		
		If !counter! equ 0 (
			Echo.
			Echo No File Found
			Pause >nul
			Cls && goto :menu
		) Else (
			Echo.
			Echo Total Files Moved [!counter!]
			Pause >nul
			Cls && goto :menu
		)
	Rem This line will not be processed
	Echo Out of statements
	Pause >nul && Cls && goto :menu