@echo off

>nul 2>&1 "%SYSTEMROOT%\system32\icacls.exe" "%SYSTEMROOT%\system32\config\system"

if %errorlevel% neq 0 (
    echo Le script nécessite des privilèges d'administrateur.
    echo Veuillez redémarrer en tant qu'administrateur.
    pause > nul
    exit /b
)

:chargement
echo Chargement en cours...
chcp 65001
title Oto-Maintenance

:menu
cls
echo.
echo Menu de Fonctionnalités :
echo.
echo 1. Défragmentation des lecteurs
echo 2. Activer/désactiver Windows Defender
echo 3. Lancer une analyse Windows Defender
echo 4. Lancer un programme
echo 5. Relancer l'explorateur de fichiers
echo 6. Lancer msconfig
echo.
set /p choix="Entrez le numéro de l'option souhaitée (ou 'q' pour quitter) : "

if "%choix%"=="1" goto defragmentation
if "%choix%"=="2" goto defender
if "%choix%"=="3" goto analyse_defender
if "%choix%"=="4" goto lancer_programme
if "%choix%"=="5" goto relancer_explorateur
if "%choix%"=="6" goto lancer_msconfig
if /i "%choix%"=="q" goto fin

echo Option invalide.
timeout /t 2 >nul
goto menu

:defragmentation
cls
echo Défragmentation des lecteurs en cours...
start defrag C:\ /d
echo.
echo Défragmentation terminée.
pause >nul
goto menu

:defender
cls
echo Vérification du statut de Windows Defender...
set "defenderStatus="
for /f "tokens=2 delims=: " %%i in ('powershell -command "Get-MpPreference | Select-Object -ExpandProperty DisableRealtimeMonitoring"') do (
    set "defenderStatus=%%i"
)

if "%defenderStatus%"=="1" (
    echo Activation de Windows Defender en cours...
    powershell -command "Set-MpPreference -DisableRealtimeMonitoring 0"
    echo Windows Defender a été activé.
) else (
    echo Windows Defender est déjà actif.
)
pause > nul
echo.
echo Opération terminée.
pause > nul
goto menu

:analyse_defender
cls
echo Lancement de l'analyse Windows Defender en cours...
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 1
echo.
echo Analyse terminée.
pause >nul
goto menu

:lancer_programme
cls
echo Lancement d'un programme en cours...
echo Cette commande est en maintenance
echo.
echo Programme lancé.
pause >nul
goto menu

:relancer_explorateur
cls
echo Relancement de l'explorateur de fichiers en cours...
taskkill /f /im explorer.exe
start explorer.exe
echo.
echo Explorateur de fichiers relancé.
pause >nul
goto menu

:lancer_msconfig
cls
echo Lancement de msconfig en cours...
start msconfig.exe
echo.
echo msconfig lancé.
pause >nul
goto menu

:fin
cls
exit