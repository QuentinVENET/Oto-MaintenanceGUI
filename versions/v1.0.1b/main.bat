@echo off
title Oto-Maintenance
:start
echo Bienvenue sur Oto-Maintenance !
echo Version 1.0.0 (canal beta).
echo[
echo Changements :
echo - Ajout des options de securite.
echo[
echo Pressez une touche pour lancer les options de securite !
pause > nul
start defender.bat 
cls
echo Options de securite ouvert dans une nouvelle fenetre.
echo Pressez une touche pour fermer cette fenetre.
@REM echo Pressez une touche pour revenir a l'accueil.
pause > nul
cls
echo Fermeture d'Oto-Maintenance dans 3 secondes...
timeout 3 > nul
exit
@REM goto start