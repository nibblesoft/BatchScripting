
REM THIS ONLY WORKS IF FILE ARE NOT HIDDEN
rem run as admin
@echo off
	cls
	setlocal enabledelayedexpansion
	echo.
	echo.
	echo Enter the file name you want to search and press enter^!
	set /p filename="Type file name here: "
	echo.
	echo.
	echo Enter the drive letter.
	REM set /p driver="Type driver letter: "
	
	
		for /r "%USERPROFILE%" %%G in ("*copy.*") do (
			ECHO Duplicate - %%~nG
			REM TO EXECUTE THE FOUND FILE JUST REMOVE THE ECHO COMMAND 
			REM AND LEAVE ONLY %%G
			REM DEL "%%G"
		)
		echo %errorlevel%
		pause >nul
		
		REM ERROLEVEL CHECKER
		REM THIS SEARCH WILL ALWAYS GIVE ERRORLEVEL 1
		if errorlevel 1 (
			echo files were not found
			pause >nul
		) else (
			echo command complete successfuly
			pause >nul
		)
		