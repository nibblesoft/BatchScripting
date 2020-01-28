@ECHO off
   SETLOCAL
   set server1=frodo3
   set server2=gandalf4
   set server3=ascom5
   set server4=last1
   
   ::run the Loop for each of the servers
   call :loop server1
   call :loop server2
   call :loop server3
   call :loop server4
   goto:eof
   
   :loop
   set _var=%1
   :: Evaluate the server name
   CALL SET _result=%%%_var%%%
   echo The server name is %_result%
   goto :eof
   
   :s_next_bit
   :: continue below

:: Note the line shown in bold has three '%' symbols
:: The CALL will expand this to: SET _result=%server1% 