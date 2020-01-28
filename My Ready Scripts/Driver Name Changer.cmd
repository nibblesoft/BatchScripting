
@ECHO OFF
	SETLOCAL ENABLEDELAYEDEXPANSION
	title Driver Name Changer v1.0
	color a
	cls
	echo.
	echo.
	ECHO DRIVER NAME CHANGER BY IVANDROFLY
	set /p label="Type the label for your driver => "
	set /p driver="Type the you driver letter => "
	
	echo ; Scripts Created by Ivandro Ismael >>"!driver!:\autorun.inf"
	echo. >>"!driver!:\autorun.inf"
	echo [autorun] >"!driver!:\autorun.inf"
	echo label="!label!" >>"!driver!:\autorun.inf"
	echo. >>"!driver!:\autorun.inf"
	echo [content] >>"!driver!:\autorun.inf"
	echo Musicfiles=false >>"!driver!:\autorun.inf"
	echo Videofiles=false >>"!driver!:\autorun.inf"
	echo Picturefiles=false >>"!driver!:\autorun.inf"
GOTO :EOF