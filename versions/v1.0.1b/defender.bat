@echo off
title Oto-Maintenance - Option de securite
echo Ouverture du MRT...
echo Note: Vous devez avoir les permissions d'administrateurs.
echo Securite activee: Pressez une touche pour demarrer
pause > nul
start mrt.exe > nul
cls
echo MRT ouvert.
echo Retour a l'accueil dans 10 secondes...
timeout 10 > nul
start main.bat
exit