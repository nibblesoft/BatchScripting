@echo off
setlocal EnableDelayedExpansion
Set var1=Hello ABC how are you
Set var2=ABC
Set result=!var1:%var2%=Beautiful!
Echo [!result!]