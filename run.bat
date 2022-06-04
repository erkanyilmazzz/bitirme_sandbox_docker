@rem argq.bat
@echo off

:loop 
if "%1"=="" goto :done

powershell -Command "Invoke-WebRequest -Uri https://raw.githubusercontent.com/erkanyilmazzz/bitirme_sandbox_docker/main/Dockerfile -OutFile Dockerfile"

ECHO %1.txt
COPY %1 temp
docker image ls
docker build -t sandbox .
docker run sandbox
docker image rm sandbox -f

del temp
del Dockerfile

exit 

:done
echo dosya yok.