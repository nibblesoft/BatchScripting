:: Script made by 'Ivandro Ismael Gomes Jao'
@echo off
	cls
	setlocal enabledelayedexpansion
	:menu
	echo ENTER NUMBER TO START SCANING
	SET /P _START="ENTER NBR: "
	ECHO ENTER NBR TO STOP SCANING
	SET /P _END="ENTER NBR: "
	
	for /l %%A In (%_START%,1,%_END%) do (
		for /f "tokens=2,3 delims= " %%G in  ('ping -a -w 500 -n 1 192.168.1.%%A ^| find "Pinging"') do (
			echo.
			echo ============================================
			echo CUMPUTER[%%A] NAME --^> [%%G]			
			echo CUMPUTER IP-ADRESS --^> %%H
			echo ============================================
			echo.
		)
	)
	echo.
	echo SCANNING COMPLETE ^<^< SUCCESSFULLY ^>^>
	:_Scan
	echo.
	echo DO YOU WANNA SCAN-AGAIN^? ENTER ^<^<y/n^>^>
		set /p var="ENTER HERE: "
			if /i "%var%" == "y" (
				cls
				goto :menu
			) else if /i "%var%" == "n" (
				echo.
				echo QUIKTING PROGRAM IN 3 SECONDS^^!^^!^^!
				ping -n 3 localhost >nul
			) else (
				CLS
				ECHO.
				ECHO YOU ENTERED INVALID OPTION^^!^^!^^!
				ECHO.
				pause >nul 
				goto :_Scan
			)