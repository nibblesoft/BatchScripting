@echo off && cls
SETLOCAL ENABLEDELAYEDEXPANSION
	set /a i=1	
REM set /a i+=i
REM echo !i!
REM echo %i%
REM echo 'ivandro'
	for /f "skip=27 tokens=2 delims==" %%G in ('wmic cpu list /format') do (
		rem echo !i!
		if !i! == 1 (
			ECHO.
			ECHO.
			ECHO.
			echo ==============================================================
			echo CPU NAME IS: %%G
			echo ==============================================================
		)
		set /a i+=1
	)
	echo PRESS ANY KEY TO EXIT^^!
	pause >nul