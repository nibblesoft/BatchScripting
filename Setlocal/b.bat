@echo off
	cls
setlocal ENABLEDELAYEDEXPANSION
	:menu
	set i=1
	set sum=0
	set m=0
	set j=1
	goto :r
	:module
	set i=1
	set sum=0
	set /a j += 1
	:r
	if %j% leq 3 (
			:note
			echo MODULE %j%
			if %i% leq 3 (
				echo ENTER NOTE %i%
				set /p note=": "
				set /a sum += note
				set /a i += 1
				goto note
			)
	set /a sum = sum / 3
	echo.
	echo.
	echo THE AVARAGE OF NOTE FOR MODULE [!j!] is: [!sum!]
	pause 
	set /a m += sum
	goto module
	)
	set /a r = m / 3
	echo THE THE AVERAGE OF ALL MODULE IS !r!
			pause
			cls
			goto menu
setlocal DISABLEDELAYEDEXPANSION