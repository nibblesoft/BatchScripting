@Echo off 
SETLOCAL
::Standard commission
Set _Commission=20 
Echo Standard commission %_Commission% 

::Premium commission
SETLOCAL
Set _Commission=30
Echo Premium commission %_Commission% 

::back to Standard commission
 ENDLOCAL
Echo %_Commission%