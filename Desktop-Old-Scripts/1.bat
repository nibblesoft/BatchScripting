@echo off
	cls
	setlocal enabledelayedexpansion
	for /f "skip=19 tokens=1,2 delims= " %%G in ('dir %userprofile%') do (
	echo %%G %%H
	)
	
	:1
	set H=Ivandrofly
	set p=dro
	call set H=%%H:%p%=dra%%
	echo %H%
	
	::
		:: for /f "skip=15 tokens=2,3 delims= " %%G in ('dir %userprofile%') do (
		:: set A=%%H
		:: Doesn't WORKS :(
		:: set H=!A:!A!=hora!
		:: echo %%G !H!
	::)