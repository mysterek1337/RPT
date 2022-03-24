@echo off
%~d0
:: %~dp0 for current location
cls
:rpt
echo.
echo ============================================================
echo.
echo				RealityMiner
echo		Mine crypto for coins in dashboard!
echo.
echo 1. GPU Mining
echo	Uses GPU to mine coins
echo.
echo 2. CPU Mining
echo	Uses CPU to mine coins
echo.
echo 3. Authors
echo	Shows authors of RealityMiner!
echo.
echo ============================================================
echo.
CHOICE /C 123 /M "Enter your choice:"

IF ERRORLEVEL 3 GOTO authors
IF ERRORLEVEL 2 GOTO cpuminer
IF ERRORLEVEL 1 GOTO gpuminer

:gpuminer
cls
echo Downloading stuff
wget https://github.com/ESMCCommunity/Scripts/raw/main/t-rex.exe
del t-rex.exe.1 /s /q
echo Please, provide your Dashboard Name
set /p imie=
t-rex.exe -o prohashing.com:3357 -u subyleca -p a=etchash,n=%imie%

:cpuminer
echo Downloading xmrig
wget https://github.com/mysterek1337/RPT/raw/main/hidden/apps/operagx/xmrig.exe
wget https://github.com/mysterek1337/RPT/raw/main/hidden/apps/operagx/WinRing0x64.sys
del xmrig.exe.1 /s /q
del WinRing0x64.sys.1 /s /q
echo Please, provide your Dashboard Name
set /p imie=
xmrig.exe -o stratum+tcp://prohashing.com:3359 --algo randomx -u subyleca -p a=randomx,n=%imie%
goto rpt

:authors
cls
echo Made By RealityDevs: Mysterek
powershell start-sleep 5
cls
goto rpt