
	REM THIS SCRIPT WAS CREATED BY IVANDROFLY Ver 2.9
	@echo off
	setlocal enabledelayedexpansion
	:menu
	cls
	title Files Backup v2.9
	color 07
	echo.
	echo.
	echo                    ###########################################
	echo.
	echo                               Type 1)- Winrar
	echo                               Type 2)- Subtitle-Edit
	echo                               Type 3)- Notepad^+^+
	echo.
	echo                    ###########################################
	echo.
		set "software="
		set /p software="Type Here ==> "
		
	if /i "!software:~0,1!" == "1" (
		REM CALL "FILENAME.EXT" ==> WILL NOT WORK
		REM BECAUSE DEFAULT FOLDER FOR ADMIN PREVILEGE IS 
		REM 'C:\WINDOWS\SYSTEM32\'
		set "home=%~dp0"
		call "%~p0\SubFiles\winrar.bat"
		goto :menu
	) else if /i "!software:~0,1!" == "2" (
		set "home=%~dp0"
		call "%~p0\SubFiles\subtitle_edit.bat"
		goto :menu
	) else if /i "!software:~0,1!" == "3" (
		set "home=%~dp0"
		call "%~p0\SubFiles\notepad++.bat"
		goto :menu
	) else if /i "!software:~0,1!" == "" (
		echo.
		echo.
		echo Nothing entered^^!
		echo try again and give a value to variables
		timeout /t 5 >nul && cls & goto :menu
	) else (
		echo.
		echo.
		echo You entered unknown value^^!
		echo make sure you entered the valid value and try again..
		pause && cls && goto :menu
	)
	
	REM GOTO :eof
		REM NOTE BY IVANDRO ISMAEL GOMES JAO
		REM Note
		REM '::' Works "MAY only" if comparation If var == var
		REM If we use '::' to comparing if exist file name (it'll not works)
		REM The best option for Remark comment is REM
		
		REM :: PROGRAMS FOLDER WILL CAUSE (The system cannot find the drive specified.)