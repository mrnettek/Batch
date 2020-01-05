:: MrNetTek
:: eddiejackson.net/blog
:: 1/5/2020
:: free for public use 
:: free to claim as your own

@echo off
 
setlocal ENABLEDELAYEDEXPANSION
 
::initial index value - zero for the sake of convention
 
set index=0
 
:: the array values
 
set array=3 1 5 7 9 2 8 9 2 4
 
:: load array
 
(for %%a in (%array%) do (
 
   echo %%a
 
   set array[!index!]=%%a
 
   Set /A index+=1
 
))
 
echo.
 
:: test array - return values
 
Echo Array index:0 Element 1: %array[0]%
 
Echo Array index:6 Element 7: %array[6]%
 
Echo Array index:2 Element 3: %array[2]%
 
pause
