@echo off
	title EOF
	color 0a
	:food
	echo In food
	call :drink
	echo Left drink, in food
	pause >nul
	:drink
	echo In drink
	goto :eof
	