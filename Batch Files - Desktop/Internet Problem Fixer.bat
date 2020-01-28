
@echo off
	Title Internet Probelm Fixer by Ivandrofly
	ipconfig /release >nul
	REM THIS WILL DELAY THE RUN FOR IPCONFIG /RENEW
	timeout /t 10 /nobreak >nul
	ipconfig /renew >nul
	Echo           =============================
	Echo            Internet Probelm Were Fixed
	Echo           =============================
	pause >nul