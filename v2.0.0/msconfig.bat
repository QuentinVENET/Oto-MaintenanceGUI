@echo off
title Oto-Maintenance - Option de demarrage
:start
echo Bienvenue sur cet utilitaire !
echo Il vous permet de reparametrer le mode de demarrage Windows.
echo[
echo 1- Ouvrir msconfig.exe.
echo 2- Quitter cet utilitaire.
set /p choice= Choisissez un parametre: 
IF /i "%choice%"=="1" goto app
IF /i "%choice%"=="2" goto quit
:app
cls
echo Parametres de demarrage Windows ouvert dans une nouvelle fenetre.
echo Operation terminee avec succes.
start msconfig.exe > nul
pause > nul
cls
goto start 
:quit
cls
exit