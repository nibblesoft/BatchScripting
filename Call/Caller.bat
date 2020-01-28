@ECHO off
   SETLOCAL
   :: DECLARATION OF THE VARIABLES
   set server1=frodo3
   set server2=gandalf4
   set server3=ascom5
   set server4=last1
   set server5=ivandro
   
   ::RUN THE LOOP FOR EACH OF THE SERVERS
   call :loop server1
   call :loop server2
   call :loop server3
   call :loop server4
   call :loop server5
   goto :EOF
   
   :loop
   set _var=%1
   :: EVALUATE THE SERVER NAME
   CALL SET _result=%%%_var%%%
   echo The server name is %_result%
   goto :EOF
   
   :s_next_bit
   :: CONTINUE BELOW

:: Note the line shown in bold has three '%' symbols
:: The CALL will expand this to: SET _result=%server1%