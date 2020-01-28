	
	
		REM TO EXECUTE THIS PROGRAM YOU NEED TO RUN AS AMDINISTRATOR
	@echo off
	cls
	echo.
	echo.
	echo.
	echo                   ##################################################
	ECHO.
	echo                          ENTER THE FILE NAME AND PRESS ENTER
	ECHO.
	echo                   ##################################################
	ECHO.
	REM Minaj
	SET /P VAR="TYPE THE FILE NAME AND PRESS ENTER====> "
	
		FOR /R %userprofile%\ %%G IN ("*%VAR%*.*") DO (
			REM QUOTATION MARK ("") IS NEEDED TO EXECUTE FILE WITH DOUBLE NAME ("IVANDRO ISMAEL")
			echo FILE FOUND %%~nG
			"%%~fG"
		)
		PAUSE >NUL