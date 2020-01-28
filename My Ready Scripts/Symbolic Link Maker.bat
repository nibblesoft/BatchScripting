

@echo off
	cls
	setlocal enabledelayedexpansion
	title Symbolic Link Maker v1
	
	:menu
	echo.
	echo.
	echo This is symbolic link maker.
	echo Type the name you want to named you Symbolic Link.
	echo Note: The quotes are required^^!
	echo The links be default will be created in you 'DESKTOP'
	
	set /p link_name="Type the name for you lnk and press enter ==> "
	echo %__cd__%
	set /p target_name="Enter the target path ==> "
	
	pushd %~dp0
	pause >nul
	REM THIS LINE WILL MAKE SYMBOLIC LINK
	mklink /d !link_name! !target_name!
	
	echo !link_name! !target_name!
	echo %errorlevel%
	pause >nul
		
		REM THIS LINE WILL CHECK IF ERRORLEVEL IS >= 1
		if errorlevel 1 (
			echo.
			echo There is a errorlevel
			echo Check your parametre
			pause >nul
			cls
			goto :menu
		) else (
			echo The Scripts has executed successfuly^^!^^!
			pause >nul
			cls
			REM ping -n 3 localhost nul> 2>&1
		)
goto :eof
		
	REM %__CD__%   The current directory, terminated with a trailing backslash.
	REM %=C:% The current directory of the C: drive.
	REM %=D:% The current directory of the D: drive if drive D: has been accessed in the current CMD session.
	REM %=ExitCode%   The hex value of the last return code set by EXIT /B
	REM %=ExitCodeAscii%   The ASCII value of the last return code set by EXIT /B if greater than 32.