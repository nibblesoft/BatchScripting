
	@echo off
	cls
	echo.
	
	for /r "%USERPROFILE%" %%G in ("*.mp3") do (
		rem %%~nG is a paramtre
		echo  Deleted File -- %%~nsG
	)
	pause >nul