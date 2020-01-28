@echo off
	cls
	setlocal enabledelayedexpansion
:menu
	pause >nul
	goto :label1
	:: What I mean is, don't ever have an environment variable named errorlevel.
	:: That's just a bad idea. Windows command processor will take your definition every time.
	:: This means if you set your errorlevel, subsequent check for any command's errorlevel will not work.

:label1
		
		call some_command_that_returns_non_zero.cmd
		echo !errorlevel!
		pause 1>nul
		if %errorlevel% EQU 0 (
		echo SUCCESS
		) else (
		echo FAIL
		echo %errorlevel%
		)
		pause >nul
		goto :menu
		
		:: You will always get errorlevel set to 0 or whatever value you happen to have it set to.
		:: So the check in the above snippet will always return success.
		:: Well, OK, I admit. When I said above that your subsequent errorlevel check will not work, I lied.
		:: The other way of checking errorlevel will still work.
		
:label2
		set errorlevel=0
		call some_command_that_returns_non_zero.cmd 2>nul
		
		if errorlevel 1 (
		echo FAIL
		) else (
		echo SUCCESS
		)
		
		:: That would still work. But just save yourself some trouble and stay away from it.
		
		:: There is some change in post check the link below
		:: http://batcheero.blogspot.com/2007/07/never-set-errorlevel.html