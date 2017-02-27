@echo off
Cd\Users\Shailesh\D\W\On\GH\test
git init
FOR /F "TOKENS=1* DELIMS= " %%A IN ('DATE/T') DO SET CDATE=%%B
FOR /F "TOKENS=1,2 eol=/ DELIMS=/ " %%A IN ('DATE/T') DO SET mm=%%B
FOR /F "TOKENS=1,2 DELIMS=/ eol=/" %%A IN ('echo %CDATE%') DO SET dd=%%B
FOR /F "TOKENS=2,3 DELIMS=/ " %%A IN ('echo %CDATE%') DO SET yyyy=%%B
SET date="%date:~0,2%-%date:~3,2%-%date:~6,6%"
SET Today=%yyyy%%mm%%dd%
git commit -m %Today%
git remote add origin https://github.com/shaileshpisat/test.git
git push -u origin master

