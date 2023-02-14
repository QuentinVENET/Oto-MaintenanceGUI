@echo off
title Oto-Maintenance - Option de Windows Defender
:start
echo Bienvenue sur cet utilitaire !
echo Il vous permet de desactiver ou de reactiver Windows Defender.
echo Note : Nous vous deconseillons de desactiver Windows Defender.
echo[
echo 1- Activer Windows Defender (recommande).
echo 2- Desactiver Windows Defender (non recommande).
echo 3- Quitter cet utilitaire.
set /p choice= Choisissez un parametre: 
IF /i "%choice%"=="1" goto enable
IF /i "%choice%"=="2" goto disable
IF /i "%choice%"=="3" goto quit
:enable 
cls
echo Windows Defender a ete active !
echo Securite activee: Pressez une touche pour retourner a l'accueil.
PowerShell Set-MpPreference -DisableRealtimeMonitoring 0 or PowerShell Set-MpPreference -DisableRealtimeMonitoring $false
pause > nul
cls
goto start 
:disable
cls
echo Windows Defender a ete desactiver !
echo Securite activee: Pressez une touche pour retourner a l'accueil.
PowerShell Set-MpPreference -DisableRealtimeMonitoring 0 or PowerShell Set-MpPreference -DisableRealtimeMonitoring $true
pause > nul
cls
goto start 
:quit
cls
exit