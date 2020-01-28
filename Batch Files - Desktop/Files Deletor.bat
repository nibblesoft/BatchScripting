

	@echo off
	cls
	setlocal enabledelayedexpansion
	title File deletor
	pause >nul
	
	FOR /f "tokens=1" %%G in ('dir /b') do (
		echo %%G
	)