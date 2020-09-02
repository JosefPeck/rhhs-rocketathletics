REM
@echo off
setlocal

for %%i in ("%~dp0.") do set "folder=%%~fi"

docker build --tag rhhsrocketathleticsbuild:1.0 .

docker.exe run --rm -it -d -v %folder%\source:/usr/local/apache2/htdocs -p 8080:80 --name rhhsrocketathletics rhhsrocketathleticsbuild:1.0
