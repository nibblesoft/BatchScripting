
@echo off
cls
set _ping_cmd=ping -n 5 127.0.0.1
:: Packets: Sent = 5, Received = 5, Lost = 0 ("0"% loss),
	FOR /f "tokens=5 delims=^=%%(" %%G IN ('%_ping_cmd% ^|find "Packets:"') DO (
		echo Result is [%%G]
	)
	pause >nul