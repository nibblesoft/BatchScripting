

@echo off
	cls
	setlocal Enabledelayedexpansion
	echo.
	echo.
	pushd "%USERPROFILE%\Downloads\" || echo command fails
	for /f "tokens=* delims=" %%G in ('dir /b /ah 2^>nul') do (
		echo Found - %%G
		del /a /f /q "%%G"
	)
	dir /ah /b && REM Shall display Files Not Found if the command has completed successfully
	pause >nul
	REM If the scripts was ran with out admin privelege it will always set the scripts path as current path
	REM Note^: This command willl check the scripts even in is it hidden
	if exist "AlbumArtSmall.jpg" (
		echo Files Exist, they weren't deleted :P
	) else (
		echo Files do not exist, maybe all were deleted
	)
	pause >nul