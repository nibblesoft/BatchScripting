@echo off
	cls
	
	:food
	pause >nul
	echo In food
	call :drink
	echo Left drink, In food
	goto water
	
	:drink
	echo In drink
	goto :eof
	
	:water
	echo In water
	call :drink
	echo Left Drink, In water
	goto food