@echo off
cls
:: Setlocal EnableDelayedExpansion
:: Set _html=Hello^>World
:: Echo !_html!
:: pause >nul
:: ----------------
:: Setlocal EnableDelayedExpansion
:: Set _var=first
:: Set _var=second& Echo %_var% !_var!
:: pause
:: ---------------------
:: @echo off
:: setlocal EnableDelayedExpansion
:: :: count to 5 storing the results in a variable
:: set _tst=0
:: FOR /l %%G in (1,1,5) Do (echo [!_tst!] & set /a _tst+=1)
:: echo Total = !_tst!
:: pause >nul

:: Setlocal EnableDelayedExpansion 
:: for /f %%G in ("abc") do ( set _demo=%%G & echo !_demo!)
:: pause
:: Example of replacing one variable with values from another:
:: --------------------------------------
setlocal EnableDelayedExpansion
Set var1=Hello ABC how are you
Set var2=YOU
Set result=!var1:%var2%=!
Echo [!result!]
pause >nul