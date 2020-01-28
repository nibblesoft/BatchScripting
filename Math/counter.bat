@echo off
	cls
	
	set /p x="Enter start : "
	set /p y="Enter loop : "
	set counter=1
	:loop
		if %counter% lss %y% (
		rem this is new counter
			set /a sum=x*counter
			echo %x%^+%counter%^=%sum%
			set /a counter += 1
			goto loop
		) else (
			echo End
			pause >nul
		)