@echo off
	setlocal ENABLEDELAYEDEXPANSION
	cls
	if exist "%APPDATA%\utorrent" (
		pushd "%AppData%" && rd /s /q Utorrent
		pause >nul
	) else (
		echo Folder Dosn't Exist!
		pause >nul
	)