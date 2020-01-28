

:menu
	@echo off
	cls
	If exist "*.txt" (
	echo "File/s *.txt exit"
	pause >nul
	goto menu
	) else if not exist "*.txt" (
	echo.
	echo.
	echo Files *.txt doesn't exit
	echo.
	echo.
	pause >nul
	goto menu
	)
	
REM :exist
	REM @echo off
	REM cls
	REM color a
	REM echo.
	REM echo.
	REM echo     File Deleted successfully
	REM echo.
	REM echo.
	REM pause > nul
	REM goto menu

:not
	echo.
	echo.
	color 0C
	echo      Files doesn't exist
	echo.
	echo.
	pause > nul
	goto menu