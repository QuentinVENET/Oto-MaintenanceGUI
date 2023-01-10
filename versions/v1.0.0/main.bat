@echo off
title Oto-Maintenance
:start
echo Bienvenue sur Oto-Maintenance !
echo Version 1.0.0 (canal classique).
echo[
echo Changements :
echo - Ajout des options de securite.
echo[
echo 1- Analyse Antivirus
echo 2- Parametres de Windows Defender
echo 3- Credits
echo 4- Quitter Oto-Maintenance
set /p choice= Choisissez un parametre: 
IF /i "%choice%"=="1" goto antivirus
IF /i "%choice%"=="2" goto defender
IF /i "%choice%"=="3" goto credits
IF /i "%choice%"=="4" goto quit
:antivirus
cls 
echo Analyse antivirus ouverte dans une autre fenetre.
echo Securite activee: Pressez une touche pour revenir a l'accueil.
start defender.bat > nul
pause > nul
cls
goto start
:defender
cls
echo Parametres de Windows Defender ouverts dans une autre fenetre.
echo Securite activee: Pressez une touche pour revenir a l'accueil.
start windefender.bat > nul 
pause > nul
cls
goto start
:credits
cls
echo Credits du programme ouvert dans une autre fenetre.
echo Securite activee: Pressez une touche pour revenir a l'accueil.
start credits.bat > nul 
pause > nul
cls
goto start
:quit
cls
echo Fermeture d'Oto-Maintenance dans 5 secondes.
echo Pressez une touche pour fermer Oto-Maintenance immediatement.
timeout 5 > nul
exit