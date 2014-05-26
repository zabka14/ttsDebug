@echo off

::Nom du fichier serveur
Set serveur=ARMA2OASERVER.exe

::Temps entre chaque test (en secondes)
Set interval=30

::Debut d'un boucle infinie
:start

::Verifie si le sevice est lancé
tasklist | find "%serveur%" /C /i > nul

::Formatage de l'heure affichée
set hour=%time:~0,2%
if "%hour:~0,1%" == " " set hour=0%hour:~1,1%
set min=%time:~3,2%
if "%min:~0,1%" == " " set min=0%min:~1,1%
set secs=%time:~6,2%
if "%secs:~0,1%" == " " set secs=0%secs:~1,1%

::Définition de l'heure
Set heure=%hour%:%min%:%secs%

::Si le service est lancé on ne fait rien sinon on le relance
if "%errorlevel%" == "0" (
	echo [%heure%]  Serveur deja lance.
) else (
	echo [%heure%]  Serveur down.
	echo [%heure%]  Reboot du serveur...
	start /d "%~dp0" %serveur%
)

::Pause pendant le temps indiqué plus haut
sleep %interval%

::Fin de la boucle infinie
goto :start