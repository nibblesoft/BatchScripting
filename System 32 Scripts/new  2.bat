
@echo off
	cls
	
echo.
echo.
echo.

	set /p x="Enter nbr: "
	set /p y="Enter nbr: "
		
	if %x% gtr %y% (
		echo nbr %x% ^> %y%
		pause >nul
	) else if %x% lss %y% (
		echo %x% ^< %y%
		pause >nul
	) else (
		echo "%x% = %y%"
		pause >nul
)