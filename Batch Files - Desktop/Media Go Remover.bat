
@echo off
	cls
	title Media Go Remover
	echo.
	echo.
	echo.
	rem if we add point inside the searh command it will be executed only SEARCH IN "MEDIAG GO"
	for /d /r "%USERPROFILE%" %%G IN ("Media Go.*") DO (
		ECHO FOUND - %%~fG
	)
	pause