@echo off
title Oto-Maintenance - Suppression des Credits
echo Bienvenue sur l'utilitaire de suppression des credits.
echo Afin de conserver de l'espace sur le disque dur, les credits seront supprimes automatiquement.
echo Pour arreter la suppression des credits fermez simplement cette fenetre et retournez sur Oto-Maintenance.
echo Note: Temps restant avant suppression:
timeout 10
del credits.bat
cls
echo Les credits ont ete supprimes avec succes, pressez une touche pour retourner sur Oto-Maintenance.
pause > nul
start main.bat
exit