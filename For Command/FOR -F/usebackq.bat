
:: This option is useful when dealing with a filenameset that is a long filename containing spaces, it allows you to put double quotes around the filename.
:: The backquote character ` is just below the ESC key on most keyboards. Usebackq can be abbreviated to useback (undocumented.)

:: To ECHO from the command line, the name of every environment variable.

  FOR /F "delims==" %%G IN ('SET') DO @Echo %%G
:: The same command with usebackq:
   FOR /F "usebackq delims==" %%G IN (`SET`) DO @Echo %%G