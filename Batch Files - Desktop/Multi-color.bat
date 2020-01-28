
@echo off
	TITLE MULTI-COLOR
	cls
	echo.
	echo.
	echo.
		
	if exist .\color (
		rd .\color /s /q
	)
	
	md .\Color
	cd .\Color
	
	REM set /p ".= Text before anything " <nul
	set /p ".= Text after colored text 1 " <nul >"Ivandro"
	set /p ".= Text after colored text 2 " <nul >"Ismael"
	set /p ".= Text after colored text 3 " <nul >"Gomes"
	set /p ".= Text after colored text 4 " <nul >"Jao"
	REM echo Text after colored text 1 >Ivandro
	REM echo Text after colored text 2 >Ismael
	rem this line /c: is the test to find /s is the files /  or colored test file
	findstr /a:0c /c:"Text after colored text 1" /s "Ivandro"
	findstr /a:0a /c:"Text after colored text 2" /s "Ismael"
	findstr /a:0b /c:"Text after colored text 3" /s "Gomes"
	findstr /a:0e /c:"Text after colored text 4" /s "Jao"
	
	REM for /f "usebackq delims=:" %%G in (`findstr /a:0e /c:"Text after colored text 4" /s "Jao"`) do (
		REM echo %%G
	REM )
	
	cd ..\
	pause >nul
	
	REM NOTE
	REM FINDSTR WILL NOT WORKS IN COLORED TEST
	
	
	