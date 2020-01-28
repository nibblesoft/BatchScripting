
rem v2.0
@echo off
	cls
	title Subtitle Checker v3.0
	setlocal enabledelayedexpansion
	:menu
	set "driver="
	echo.
	echo.
	echo Make Sure All Your Sub-Files
	echo Are In Same Folder With Movie-Files
	echo.
	set /p "driver=Type Driver Letter: "
		if not defined driver (
			echo no value entered to the variable
		)
	
	for /r "%driver%:\" %%G IN ("*.avi","*.mkv","*.mp4") do (
		pushd "%%~dpG"
		REM echo %%~nG
		if not exist ".\*.srt" (
			echo No Subtitles Found - %%~nG
		) else if exist ".\*.mp4" (
			Rem this line will only verify if there are subtitle file and *.mp4 file
			echo There are Porn Movies - %%~nG
		)
		popd
	)
	
	echo.
	echo Subtitles Checker Completes Successfully
	:exit
	echo.
	echo.
	echo Do you want re-run the scrits?
	set /p x="Types (y/n)"
		
		if /i "!x:~0,1!" == "y" (
			cls & goto :menu
		) else if /i "!x:~0,1!" == "n" (
			cls & exit /b
		) else (
			echo.
			color c
			echo You entere invalid option
			echo Try Again and enter the valid one
			pause >nul
			cls
			color 07
			goto :exit
		)
		
	REM These codos are not longer in main fonction^^!
	pause >nul
	goto :eof
	
	:label_test
	for /r "%USERPROFILE%\Music\" %%G in ("*.mp3","*.jpg") do (
		REM echo %%~xG
		if "%%~xG" == ".mp3" (
			echo Music Files
			set /a mus += 1
		) else (
			echo Pictures Pictures Files
			set /a pic += 1
		)
	)
	
	rem this line of the scripts will not works
	echo Total ---^> !pic!
	echo Total ---^> !mus!
	pause >nul