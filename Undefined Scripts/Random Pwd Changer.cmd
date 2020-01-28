
@echo off
	cls
	setlocal enabledelayedexpansion
	set "rand=%random%"
	for /f "tokens=*" %%G in ('net user %username% !rand!') do (
		echo Rand pwd is :  !rand!
		echo !rand!|clip >nul
		echo %%G
	) >"d:\pwd.txt"
	pause