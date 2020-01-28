REM THERE IS TWO CALLCULATOR MADE BY IVANDROFLY (VER: 0.1.586)
	@echo off
	cls
	setlocal enabledelayedexpansion
	:MENU
	cls
	color 07
	echo.
	echo.
	echo.
	echo                         TYPE 1 TO CALCULATOR NUMBER 1
	echo                         TYPE 2 TO CALCULATOR NUMBER 2
	echo.
	echo.
	echo.
	
	set /p cal=" Type calculator munber: "
	
	if "%cal%" == "1" (
	     cls
		 goto CAL1
	) else if "%cal%" == "2" (
		 cls
		 goto CAL2
	) else (
		 cls
		 color 0c
		 echo.
		 echo.
		 echo 			  ====================
		 echo 			  ERROR type again^^!^^!^^!
		 echo 			  ====================
		 echo.
		 pause > nul
		 goto menu
	)
	
	REM CALCULATOR 1
	:CAL1
	Title Calculator Number 1
	cls
	
	REM THIS LINE WILL ADD YOUR NUMBER FOR CALC
	set /p math= "Enter problem: "
	
	REM THIS LINE WILL ASSIGN the Resultat from (%MATH%) TO (%MATH2%)
			if "%math%" == "exit" (
			exit
				) else if "%math%" == "" ( 
				cls
				set x=1
				goto Error
				)
				set /a math2=%math% 
	
	REM THIS LINE WILL SHOW VAL ASSIGN FOR (MATH= sum from ex.(2+2)) AND (MATH2= Answer)
	echo.
	echo.
	echo %math% = %math2%
	echo.
	echo.
	pause >nul
	goto menu
	
	REM CALCULATOR 2
	:CAL2
	@echo off
	color 07
	cls
	title Calculator Numnber 2
	echo.
	echo                         ===============================
	echo                            Type 1 to division (/)
	echo                            Type 2 to multiplication (^*)
	echo                            Type 3 to subtration (-)
	echo                            Type 4 to addition (^+)
	echo                         ================================
	echo.
	
	set input=
	set /p input=" Enter number:"
	
	REM ELSE IF %VAR% = IS A ADVANCE METHOD (IT ALSO ALLOW TO TYPE "SPACE IT BATCH")
	if "%input%" == "1" (
		cls
		goto divi
	) else if "%input%" == "2" (
		cls
		goto mult
		
	) else if "%input%" == "3" (
		cls
		goto subt
		
	) else if "%input%" == "4" (
		cls
		goto add
		
	) else (
		cls
		color 4f
		echo Try again
		echo
		pause > nul
		goto cal2
	)
	
	REM <invalid>
	echo SELECT MUNBER TO DEVIDE
		set /p input1=
	echo.
		set /p input2=
	
	echo %input1%/%inpuit2%=
	REM ANSWER WERE ASIGNED TO BOTH %VARS%
	REM SET ANSWER = WILL ALLOW TO SHOW THE CALCULATIO OF TWO VALUE
	set /a answer=%input1%/%input2%
	echo %answers%
	pause > nul
	REM </invalid>
	
	goto cal2
	
	
	:divi
	cls
	color 07
	echo.
	echo.
	echo                         Enter mumber to divide and (press enter)
	echo.
		set /p x=" Enter number to be devided: "
		set /p y=" Enter number to divide to: "
	
	set /a a=%x%/%y% 2>nul || goto error
	
	echo (%x% / %y%= %a%)
	
	pause > nul
		cls
		echo.
		echo.
		echo                        If you want to goto MENU type (1)
		echo                        If you want to goto DIVISION MENU type (2)
		echo.
		echo.
		
	set /p m=" Type here and press enter: "
	
	if "%m%"== "1" (
	     cls
		 goto menu
	) else if "%m%"== "2" (
		@echo off
		cls
		goto divmenu
	) else (
		@echo off
		cls
		color 0c
		echo.
		echo                         
		echo                         Error try again^^!^^!^^!
		echo                        
		echo.
		pause > nul
		goto divi
	)
	
	:mult
	
	echo.
	echo.
	echo                       "Enter number to Multiplication and  (Press enter)"
	echo.
	echo.
	
		for %%l in (x y) do (
			set %%l=
		)
	
	echo.
	echo.
	set /p x="Enter number here: "
	set /p y="Enter number here: "
	echo.
	echo.
	
	set /a r=%x%*%y%
	
	echo.
	echo Answer is ^(%x% * %y% = %r%^)
	echo.
	
	pause > nul
	     goto menu
		 
	     REM THIS IS SUBS LINE
	:subt
	echo.
	echo.
	echo                         Enter number to Subtration and  (Press enter)
	echo.
	echo.
	
	REM THIS COMMAND WILL ASSIGN ZERO VALUE TO VARIABLE %X% AND %Y%
	REM set x=single
	REM set y=single
	
	set /p x=" Enter your number HERE: "
	set /p y=" Enter your numner HERE: "
	set /a sum=%x%-%y%
		echo.
	    echo Answer is: ^(%x% - %y% = %sum%^)
		echo.
	         pause > nul
		goto menu
	
	:add
	echo.
	echo.
			for %%x in (x,y,r) do (
			set "%%x="
			)
		set /p y=" Enter your number HERE: "
		set /p x=" Enter your number HERE: "
	     set /a r=%x%+%y%
	        echo Answer is: ^(%x% + %y% = %sum%^)
	        echo.
	        pause > nul
			goto menu
	
	:ERROR
			cls
			echo.
			echo.
			echo THIS VALUE IS NOT DEFINED BY SYSTEM TRY AGAIN
			echo.
			echo.
			pause > nul
				if  "%x%" == "1" (
					goto cal1
				) else if "%x%" == "2" (
				goto cal2
				)
goto :eof	
	REM IF /i "%choice%"=="1" SET choice=A ^&^& goto userid_search_start
	REM The Set command as shown is doing exactly what you coded, 
	REM it is setting choice to A with a trailing space. Try .....SET choice=A^^&^^& goto.......etc... i.e. eliminate the space.