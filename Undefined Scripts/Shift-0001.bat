@ECHO OFF
goto loop
   :Test
   IF "%1"=="" GOTO Done
   FOR %%F IN (%1) DO TYPE %%F
   REM SHIFT WILL SHIFT PARAMETRES %1,%2,%3....
   SHIFT
   pause
   GOTO Test
   :Done
   pause
   
   :loop
    FOR /R %%F IN (*.txt) DO echo %%F C:\\tmp
	pause >nul
REM The modern version of "FOR" also includes a "/F" switch that allows it to scan through the text in a list of files, find text matching a string, and sort out various fields of text in a file. It is complicated to explain, and is not discussed further here.