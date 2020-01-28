rem Overloading a variable:

rem SETLOCAL can be used more than once in the same batch file so that multiple values can be stored in the same Environment Variable. To keep track of variable definitions, SETLOCAL and ENDLOCAL statements should be paired.

@Echo off
cls
SETLOCAL
::Standard Commission
Set _Commission=20
Echo Standard Commission %_Commission%

::Premium Commission
SETLOCAL 
Set _Commission=30
Echo Premium Commission %_Commission%

SETLOCAL
Set _Commission=50
Echo Basic Commission %_Commission%

::BACK TO STANDARD Commission
ENDLOCAL
Echo Premium Comission %_Commission% [30]

ENDLOCAL
ECHO Standard Commission S %_Commission% [20]