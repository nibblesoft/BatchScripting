@echo off & cls

:: Delete every .bak file in every subfolder starting at C:\temp

:: C:\> FOR /R C:\temp\ %%G IN (*.bak) DO del %%G

:: List all the subfolders under C:\Work

FOR /R "e:\Apps\" %%G in (.) DO (
 Pushd %%G >nul
 Echo now in %%G
 Popd
 )
Echo "back home"