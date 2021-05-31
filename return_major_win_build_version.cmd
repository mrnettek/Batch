FOR /f "tokens=1,2,3,4 delims=[.]" %%a IN ('ver') DO SET wBuild=%%d
ECHO %wBuild%
