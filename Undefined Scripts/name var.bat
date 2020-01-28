:: MADE BY IVANDROFLY

:menu
	@echo off
	title Ivandrofly
	echo.
	echo.
	echo         ::::::::::::::::: Type you name and you age! :::::::::::::::::
	echo.
	echo.
	set /p name=" Type you name: "
	set /p age=" type your age: "
	cls
	echo.
	echo.
	echo Your name is: "%NAME%" and you have "%AGE%" years old!
	echo.
	echo.
	pause > nul
	goto menu1

:menu1
	echo.
	echo.
	set /p brother=" HOW MANY BROTHER YOU HAVE: "
	set /p sister=" HOW MANY SISTER YOU HAVE: "
	echo You have "%BROTHER%" BROTHER/S
	echo and "%SISTER%" SISTER/S
	echo.
	echo.
	pause > nul
	cls
	goto menu2

:menu2
	echo.
	echo.
	echo Your name is ""%NAME%""
	echo You have ""%AGE%""
	echo You have "%brother%" brother/s and "%sister%" sister/s
	echo.
	echo.
	pause > nul
	cls
	goto menu