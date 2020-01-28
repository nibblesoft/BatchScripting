@echo off
	cls

	FOR /R "%temp%" %%G IN (*.*) DO (
		del "%%G"
		echo FILES [%%G] HAS BEEN DELETED^!
		echo 
	)
	pause >nul