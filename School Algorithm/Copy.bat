

:menucopy 
	
	@echo off
	cls
	title MENU COPY
	color 07
	echo.
		echo If you want to goto copy1 type 1
		echo If you want to goto copy2 type 2
	echo.
	set /p a= "Enter your choice here: "
	
	if "%a%" == "1" (
	goto copy1
	) else if "%a%" == "2" (
	goto copy2
	) else (
		set p=10
		goto error
	)

:copy1
	@echo off
	cls
	title COPY 1
	color 17
		echo.
		echo.
		echo Enter Disk letter (Source).
		echo Enter Disk letter (Destinaation)
		echo.
		echo.
	set /p x= "Enter source: "
	set /p y= "Enter destination: "
	
		xcopy "%x%:\*.*" "%y%:"
	pause > nul
	cls
				echo.
				echo If you want to goto Menucopy type "1"
				echo If you want to goto COPY 1 type "2"
				echo.
		set /p h= " Enter your option Here "
			if "%h%" == "1" (
				goto menucopy
			) else if "%h%" == "2" (
				goto copy1
			) else (
				set p=20
				goto error
			)
:copy2
	@echo off
	cls
	title COPY 2
	color 27
	echo.
	echo.
	echo (1) Enter file Source
	echo (2) Enter file Destination
	echo.
	echo.
		set /p m= " Enter source: "
		set /p v= " ENter destinatio: "
	
	xcopy %m%*.* %v%
	pause > nul
	echo.
	echo If you want to goto Menucopy "1"
	echo if you want to goto copy2 type "2"
	echo.
	set /p m= " Enter your option and press enter: "
	
	if "%m%" == "1" (
		goto menucopy
	) else if "%m%" == "2" (
		goto copy2
	) else (
		set p=30
		goto error
	)
	
:error
		@echo
		cls
		title ERROR
		color c7
		echo.
			echo Value not defined
			echo Press Enter to type again
		echo.
		pause > nul
		if "%p%" == "10" (
			cls
			goto menucopy
		) else if "%p%" == "20" (
			cls
			goto copy1
		) else if "%p%" == "30" (
			cls
			goto copy2
		)