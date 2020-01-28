

rem the scripts version is v1.7
@echo off
	setlocal enabledelayedexpansion
	:menu
	cls
	title Tv Series Organizer v1.7
	echo.
	echo.
	echo.
	rem i'll add errorlevel checker for this line
	pushd "d:\utorrent\" >nul
	
		if %errorlevel% gtr 0 (
			echo.
			echo There are no folder in your 'D:' driver names uTorrent
			echo make sure you have created uTorrent folder in
			echo you D: driver...
			pause >nul
			cls && exit /b
		)
		
	echo Note: Only 2, tv seria are defined.
	echo                      ======================================
	echo                           1) For Tv-Series Nikita - Defined 
	echo                           2) For Tv-Series Arrow - Defined
	echo                           3) For Tv-Serire The Vampire Diaries - undefined 
	echo                           4) For Tv-Series Spartacus - undefined
	echo                           5) For Tv-Series Game of Thrones
	echo                      ======================================
	rem this line will restore the variable 'o' for default value
	set "o="
	set /p o="Type (1-9): "
	
		if /i "!o:~0,1!" == "1" (
			cls
			REM I'LL USE CALL COMMAND INSTEAD GOTO IN ALL STATEMENTS
			goto :nikita
		) else if /i "!o:~0,1!" == "2" (
			echo Not defined
			pause >nul
			REM I'LL USE CALL COMMAND INSTEAD GOTO IN ALL STATEMAENTS
			cls && goto :arrow
		) else if /i "!o:~0,1!" == "3" (
			echo Not defined
			pause >nul
			cls && goto :menu
		) else if /i "!o:~0,1!" == "4" (
			echo Not defined
			pause >nul
			cls && goto :menu
		) else if /i "!o:~0,1!" == "5" (
			cls && goto :gameofthrones
			cls && goto :menu
		) else if /i "!o:~0,1!" == "7" (
			echo Not defined
			cls && goto :menu
		) else if /i "!o:~0,1!" == "8" (
			echo Not defined
			pause >nul
			cls && goto :menu
		) else if /i "!o:~0,1!" == "9" (
			echo Not defined
			pause >nul
			cls&& goto :menu
			REM THIS IS HOW TO COMPARE VARIABLES
		) else if /i "!o:~0,1!" == "~0,1" (
			echo.
			echo Nothing entered you should entered a
			echo value to the variable and press entered
			echo make sure you entered the demanded condition
			echo ::::::::::::::::::::::::::::::::::::::::::::
			echo If you still getting errors contact the
			echo scripts creator: @ivandrofly
			echo he may know whats is needed to do to correcte the bug
			echo thanks for ussing the scripts i hope you will e back sooner
			echo as possible this is Mr: Ivandro Ismael Gomes Jao
			pause >nul
			cls
			goto :menu
		) else (
			echo.
			echo The value you entered isn't defined
			echo make sure you entered valid option
			echo the option are available above
			pause >nul
			cls && goto :menu
		)
	cls && goto :eof
	
:nikita
	title Tv Series - Nikita
	cls
	echo.
	echo.
	echo.
	echo Type Letter Assigned To Your Driver(HARD DISK DRIVER EXTERN)
	set "d="
	echo Note: No colon needed (':')
	echo.
	set /p d="Type the letter: "
		
		pushd "!d!:\"  >nul
		if "!d!" == "" (
			echo.
			echo.
			echo Nothing Entered
			echo Try again and entered a value to variable
			timeout /nobreak /t 5 >nul
			cls
			goto nikita
		)
		
		if %errorlevel% neq 0 (
			echo You Get Errorlevel the command can't be executed
			echo the driver you entered isn't assigned
			pause >nul
			cls
			goto :menu
		)
		popd
		
		rem this line will reset the counter variable 'below'
		set /a "counter=0"
		for /r %%G in ("*nikita*.*") do (
			REM THIS LINE WILL JUST MOVE THE FILE TO NIKITA FOLDER
			move "%%G" "!d!:\Libraries\Tv Series\Nikita\Nikita - Season 3\" >nul
			set /a counter += 1
		)
		echo.
		echo.
		echo.
		
		if !counter! equ 0 (
			echo.
			echo No File Found
			pause >nul
			cls
			goto :menu
		) else (
			echo.
			echo Total Files Moved [!counter!]
			pause >nul
			cls
			goto :menu
		)
		pause >nul
		goto :menu
		
:arrow
	title Tv Show - Arrow
	cls
	echo.
	echo.
	echo Type Letter Assigned To Your Driver
	set "d="
	set /p d="Type The driver here and press enter: "
		
		pushd "!d!:\" 
		if %errorlevel% neq 0 (
			echo You Get Errorlevel the command can't be executed
			echo the driver you entered isn't assigned
			pause >nul
			cls
			goto :menu
		)
		popd
		
		if "!d!" == "" (
			echo.
			echo Nothing Entered
			echo Try again and entered a value to variable
			timeout /nobreak /t 5 >nul
			cls && goto :arrow
		)
		
		rem this line will reset the counter variable 'below'
		set /a "counter=0"
		for /r %%G in ("*arrow*.*") do (
			move "%%G" "!d!:\Libraries\Tv Series\arrow\arrow - Season 3\"
			set /a counter += 1
		)
		echo.
		echo.
		
		if !counter! equ 0 (
			echo.
			echo No File Found
			pause >nul
			cls
			goto :menu
		) else (
			echo.
			echo Total Files Moved [!counter!]
			pause >nul
			cls && goto :menu
		)
		
echo out of statement
	pause >nul
	cls
	goto :menu
	
:gameofthrones
	title Tv Show - Game of Thrones
	cls
	echo.
	echo.
	echo Type Letter Assigned To Your Driver
	set "d="
	set /p d="Type The driver here and press enter: "
		
		pushd "!d!:\" 
		if %errorlevel% neq 0 (
			echo You Get Errorlevel the command can't be executed
			echo the driver you entered isn't assigned
			pause >nul
			cls
			goto :menu
		)
		popd
		
		if "!d!" == "" (
			echo.
			echo Nothing Entered
			echo Try again and entered a value to variable
			timeout /nobreak /t 5 >nul
			cls && goto :gameofthrones
		)
		
		rem this line will reset the counter variable 'below'
		set /a "counter=0"
		for /r %%G in ("*Game?of?thrones*.*") do (
			rem This line will allow you to move all found game of thrones file to your hard drive externe	
			move "%%G" "!d!:\Libraries\Tv Series\Game Of Thrones\Game Of Thrones Season 3\" >nul
			set /a counter += 1
		)
		echo.
		echo.
		
		if !counter! equ 0 (
			echo.
			echo No File Found
			pause >nul
			cls && goto :menu
		) else (
			echo.
			echo Total Files Moved [!counter!]
			pause >nul
			cls && goto :menu
		)
	Rem This line will not be proccesed
	echo out of statement
	pause >nul
	cls
	goto :menu