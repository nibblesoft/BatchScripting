
:menu
@echo off
	cls
	
	set /p lvr=" Enter book numbers: "
	set /p prix="Enter book prises: "
	set /a r=lvr*prix*02
	echo %r%
	pause >nul
	cls
	goto menu