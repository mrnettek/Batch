for /f "tokens=1-3" %a in ('WMIC LOGICALDISK where "DeviceID='C:'" GET FreeSpace^,Name^,Size ^|FINDSTR /I /V "Name"') do @echo wsh.echo FormatNumber^(cdbl^(%a^)/1024/1024/1024, 0^) > %temp%\tmp.vbs & @if not "%c"=="" @echo( & @cscript //nologo %temp%\tmp.vbs

exit /b 0
