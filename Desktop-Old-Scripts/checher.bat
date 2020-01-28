	
	
	@echo off
	setlocal enabledelayedexpansion
	:menu
	cls
	echo.
	echo.
	echo Do you want check you assigned variable^?
		set /p var="Enter (y/n): "
		echo !var!
			 if /i "%var:~0,1%" == "y" (
					for /f "tokens=1 delims=^=" %%G in ('set') do (
						echo %%G
					)
			 ) else if /i "%var:~0,1%" == "n" (
				echo !:!
			 )
			 pause >nul
			 goto :menu