@echo off
title Oto-Maintenance - Analyse antivirus
echo Ouverture du MRT...
echo Note: Vous devez avoir les permissions d'administrateurs.
echo Securite activee: Pressez une touche pour demarrer.
pause > nul
start mrt.exe > nul
cls
echo MRT ouvert.
echo Fermeture de cette fenetre dans 10 secondes...
timeout 10 > nul
exit