@echo off
	cls
	goto :skip
	setlocal enabledelayedexpansion
	set y=Ivandrofly!
	if 1==1 (
		set y=Ismael!
		echo !y!
	)
)	
    endlocal
    set variable=%variable%
)

:skip
goto :skype
set level1=Hello!
set level2=level1
call echo %%%level2%%%

set level1=Hello!
set level2=level1
set level3=level2
call call echo %%%%%%%level3%%%%%%%


:skype
set level1=Hello!
set level2=level1
set level3=level2
set level4=level3
call call call echo %%%%%%%%%%%%%%%level4%%%%%%%%%%%%%%%
exit /b
set num=1
set var=test
set test1=Hello!
call echo %%%var%%num%%%
