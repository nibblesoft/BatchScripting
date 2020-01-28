@Echo off
cls
:: Add 25 to %1
SET /a _number=%1 + 25
:: Store %2
SET _description=[%2]
:: EOF = END OF FILE (startmain.bat<<caller>>)
goto :eof