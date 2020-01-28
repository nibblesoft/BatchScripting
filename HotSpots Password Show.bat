
REM by: @Ivandrofly
@echo off && cls
title Hotspots Wifi-pwd Finder v1 by: Ivandro Ismael
SETLOCAL ENABLEDELAYEDEXPANSION && rem not used
color a
echo.
echo.
echo                           Script by: ^<^< Ivandro Ismael ^>^>
echo.
	for /f "skip=9 tokens=4 delims=: " %%G in ('netsh wlan show profiles') do (
		for /f "tokens=1,3 delims=: " %%I in ('netsh wlan show profiles %%G key^=clear ^|find "Key"') DO (
			if "%%I" == "Key" (
				echo ===========================
				ECHO Wifi-SSID: %%G
				ECHO Password: %%J
				echo ===========================
			)
		)
	)
echo.
pause	