@echo off
	cls
	echo.
	echo %~dp0*
	pause >nul
	if exist "%~dp0Empty" (
		echo Folder found
	) else if not exist "%~dp0Empty" (
		echo Folder Does'nt Exist
	)
	pause >nul