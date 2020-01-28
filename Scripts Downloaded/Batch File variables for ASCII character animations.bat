rem --- Initialize.
setlocal EnableDelayedExpansion
color 0A
set /A "MaxX = 100"
set /A "MaxY = 50"
set /A "lines=MaxY+2","cols=MaxX+1"
mode con lines=%lines% cols=%cols%
set "CharSetWithSpaces= 01233456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
:PERPETUAL_LOOP
rem --- Build the top row.
set /A "TopRow = (TopRow + 1) %% (MaxY + 1)"
set "Row_%TopRow%="
for /L %%X in (1,1,%MaxX%) do ( set /A "i = !RANDOM! %% 70" call set "Row_%%TopRow%%=!Row_%TopRow%!%%CharSetWithSpaces:~!i!,1%%"
)
rem --- Display Screen.
set /A "Top2 = TopRow + 1"
cls
for /L %%Y in (%TopRow%,-1,0) do echo(!Row_%%Y!
for /L %%Y in (%MaxY%,-1,%Top2%) do echo(!Row_%%Y!
goto :PERPETUAL_LOOP
