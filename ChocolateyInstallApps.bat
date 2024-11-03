@echo off
setlocal enabledelayedexpansion
mode con lines=20 cols=125
chcp 65001 >nul 2>&1

openfiles >nul 2>&1
if !ERRORLEVEL! neq 0 (
    echo You are not running as Administrator...
    echo This batch cannot do it's job without elevation!
    echo.
    echo Right-click and select ^'Run as Administrator^' and try again...
    echo.
    echo Press any key to exit . . .
    pause >nul && exit
)

ping -n 1 "google.com" >nul 2>&1
if !ERRORLEVEL! neq 0 (
    echo ERROR: No internet connection found
    echo.
    echo Please make sure you are connected to the internet and try again . . .
    pause >nul && exit
)

:APPS_MENU_CLEAR
set APPS_MENU="Google Chrome" "Mozilla Firefox" "Brave" "Opera GX" "Microsoft WebView" "Vivaldi" "Deezer" "Spotify" "iTunes" "PotPlayer" "VLC media player" "Audacity" "OBS Studio" "ImageGlass" "ShareX" "GIMP" "Discord" "TeamSpeak" "Teams" "Zoom" "Slack" "Adobe Acrobat Reader" "Foxit Reader" "Microsoft Office" "Libre Office" "7zip" "Winrar" "Visual Studio Code" "Notepad++" "Github" "Git" "FileZilla" "WinSCP" "PuTTY" "Python 3" "Java Runtime Environment 8" "Node.JS" "Steam" "GOG Galaxy" "Epic Games" "Uplay" "Battle.net" "Origin" "VirtualBox" "VMware Workstation Pro" "VMware Workstation Player" "TeamViewer" "AnyDesk" "qBittorrent" "Bulk Crap Uninstaller" "Everything" "MSI Afterburner" "Visual C++ Redistributables" "DirectX" ".NET Framework 4.8"
for %%i in (!APPS_MENU!) do set "%%~i=[ ] %%~i"

:APPS_MENU
cls
mode con lines=47 cols=143
echo.
echo                             ╔═════════════════════════════════════════════════════════════════════════════════════╗
echo                             ║                                  SOFTWARE INSTALLER                                 ║
echo                             ╚═════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo              WEB BROWSERS                                 MEDIA                                        IMAGING
echo              ------------                                 -----                                        -------
echo               1 !Google Chrome!                          7 !Deezer!                                14 !ImageGlass!
echo               2 !Mozilla Firefox!                        8 !Spotify!                               15 !ShareX!
echo               3 !Brave!                                  9 !iTunes!                                16 !GIMP!
echo               4 !Opera GX!                              10 !PotPlayer!
echo               5 !Microsoft WebView!                     11 !VLC media player!
echo               6 !Vivaldi!                               12 !Audacity!
echo                                                           13 !OBS Studio!
echo.
echo              MESSAGING                                    DOCUMENTS                                    COMPRESSION
echo              ---------                                    ---------                                    -----------
echo              17 !Discord!                               22 !Adobe Acrobat Reader!                  26 !7zip!
echo              18 !TeamSpeak!                             23 !Foxit Reader!                          27 !Winrar!
echo              19 !Teams!                                 24 !Microsoft Office!
echo              20 !Zoom!                                  25 !Libre Office!
echo              21 !Slack!
echo.
echo              DEVELOPER TOOLS                              GAMES LAUNCHER                               OTHERS
echo              ---------------                              --------------                               ------
echo              28 !Visual Studio Code!                    38 !Steam!                                 44 !VirtualBox!
echo              29 !Notepad++!                             39 !GOG Galaxy!                            45 !VMware Workstation Pro!
echo              30 !Github!                                40 !Epic Games!                            46 !VMware Workstation Player!
echo              31 !Git!                                   41 !Uplay!                                 47 !TeamViewer!
echo              32 !FileZilla!                             42 !Battle.net!                            48 !AnyDesk!
echo              33 !WinSCP!                                43 !Origin!                                49 !qBittorrent!
echo              34 !PuTTY!                                                                              50 !Bulk Crap Uninstaller!
echo              35 !Python 3!                                                                           51 !Everything!
echo              36 !Java Runtime Environment 8!                                                         52 !MSI Afterburner!
echo              37 !Node.JS!
echo.
echo              !S_RED!Recommended to install
echo              ----------------------
echo              53 !Visual C++ Redistributables!
echo              54 !DirectX!
echo              55 !.NET Framework 4.8!
echo.
echo.
echo                                               Make your choices and press Enter or type 56 to Exit
echo.
set choice=
set /p "choice=|                                                                        "

REM WEB BROWSERS
if "!choice!"=="1" if "!Google Chrome!"=="[ ] Google Chrome" (set "Google Chrome=[x] Google Chrome") else set "Google Chrome=[ ] Google Chrome"
if "!choice!"=="2" if "!Mozilla Firefox!"=="[ ] Mozilla Firefox" (set "Mozilla Firefox=[x] Mozilla Firefox") else set "Mozilla Firefox=[ ] Mozilla Firefox"
if "!choice!"=="3" if "!Brave!"=="[ ] Brave" (set "Brave=[x] Brave") else set "Brave=[ ] Brave"
if "!choice!"=="4" if "!Opera GX!"=="[ ] Opera GX" (set "Opera GX=[x] Opera GX") else set "Opera GX=[ ] Opera GX"
if "!choice!"=="5" if "!Microsoft WebView!"=="[ ] Microsoft WebView" (set "Microsoft WebView=[x] Microsoft WebView") else set "Microsoft WebView=[ ] Microsoft WebView"
if "!choice!"=="6" if "!Vivaldi!"=="[ ] Vivaldi" (set "Vivaldi=[x] Vivaldi") else set "Vivaldi=[ ] Vivaldi"

REM MEDIA
if "!choice!"=="7" if "!Deezer!"=="[ ] Deezer" (set "Deezer=[x] Deezer") else set "Deezer=[ ] Deezer"
if "!choice!"=="8" if "!Spotify!"=="[ ] Spotify" (set "Spotify=[x] Spotify") else set "Spotify=[ ] Spotify"
if "!choice!"=="9" if "!iTunes!"=="[ ] iTunes" (set "iTunes=[x] iTunes") else set "iTunes=[ ] iTunes"
if "!choice!"=="10" if "!PotPlayer!"=="[ ] PotPlayer" (set "PotPlayer=[x] PotPlayer") else set "PotPlayer=[ ] PotPlayer"
if "!choice!"=="11" if "!VLC media player!"=="[ ] VLC media player" (set "VLC media player=[x] VLC media player") else set "VLC media player=[ ] VLC media player"
if "!choice!"=="12" if "!Audacity!"=="[ ] Audacity" (set "Audacity=[x] Audacity") else set "Audacity=[ ] Audacity"
if "!choice!"=="13" if "!OBS Studio!"=="[ ] OBS Studio" (set "OBS Studio=[x] OBS Studio") else set "OBS Studio=[ ] OBS Studio"

REM IMAGING
if "!choice!"=="14" if "!ImageGlass!"=="[ ] ImageGlass" (set "ImageGlass=[x] ImageGlass") else set "ImageGlass=[ ] ImageGlass"
if "!choice!"=="15" if "!ShareX!"=="[ ] ShareX" (set "ShareX=[x] ShareX") else set "ShareX=[ ] ShareX"
if "!choice!"=="16" if "!GIMP!"=="[ ] GIMP" (set "GIMP=[x] GIMP") else set "GIMP=[ ] GIMP"

REM MESSAGING
if "!choice!"=="17" if "!Discord!"=="[ ] Discord" (set "Discord=[x] Discord") else set "Discord=[ ] Discord"
if "!choice!"=="18" if "!TeamSpeak!"=="[ ] TeamSpeak" (set "TeamSpeak=[x] TeamSpeak") else set "TeamSpeak=[ ] TeamSpeak"
if "!choice!"=="19" if "!Teams!"=="[ ] Teams" (set "Teams=[x] Teams") else set "Teams=[ ] Teams"
if "!choice!"=="20" if "!Zoom!"=="[ ] Zoom" (set "Zoom=[x] Zoom") else set "Zoom=[ ] Zoom"
if "!choice!"=="21" if "!Slack!"=="[ ] Slack" (set "Slack=[x] Slack") else set "Slack=[ ] Slack"

REM DOCUMENTS
if "!choice!"=="22" if "!Adobe Acrobat Reader!"=="[ ] Adobe Acrobat Reader" (set "Adobe Acrobat Reader=[x] Adobe Acrobat Reader") else set "Adobe Acrobat Reader=[ ] Adobe Acrobat Reader"
if "!choice!"=="23" if "!Foxit Reader!"=="[ ] Foxit Reader" (set "Foxit Reader=[x] Foxit Reader") else set "Foxit Reader=[ ] Foxit Reader"
if "!choice!"=="24" if "!Microsoft Office!"=="[ ] Microsoft Office" (set "Microsoft Office=[x] Microsoft Office") else set "Microsoft Office=[ ] Microsoft Office"
if "!choice!"=="25" if "!Libre Office!"=="[ ] Libre Office" (set "Libre Office=[x] Libre Office") else set "Libre Office=[ ] Libre Office"

REM COMPRESSION
if "!choice!"=="26" if "!7zip!"=="[ ] 7zip" (set "7zip=[x] 7zip") else set "7zip=[ ] 7zip"
if "!choice!"=="27" if "!Winrar!"=="[ ] Winrar" (set "Winrar=[x] Winrar") else set "Winrar=[ ] Winrar"

REM DEVELOPER TOOLS
if "!choice!"=="28" if "!Visual Studio Code!"=="[ ] Visual Studio Code" (set "Visual Studio Code=[x] Visual Studio Code") else set "Visual Studio Code=[ ] Visual Studio Code"
if "!choice!"=="29" if "!Notepad++!"=="[ ] Notepad++" (set "Notepad++=[x] Notepad++") else set "Notepad++=[ ] Notepad++"
if "!choice!"=="30" if "!Github!"=="[ ] Github" (set "Github=[x] Github") else set "Github=[ ] Github"
if "!choice!"=="31" if "!Git!"=="[ ] Git" (set "Git=[x] Git") else set "Git=[ ] Git"
if "!choice!"=="32" if "!FileZilla!"=="[ ] FileZilla" (set "FileZilla=[x] FileZilla") else set "FileZilla=[ ] FileZilla"
if "!choice!"=="33" if "!WinSCP!"=="[ ] WinSCP" (set "WinSCP=[x] WinSCP") else set "WinSCP=[ ] WinSCP"
if "!choice!"=="34" if "!PuTTY!"=="[ ] PuTTY" (set "PuTTY=[x] PuTTY") else set "PuTTY=[ ] PuTTY"
if "!choice!"=="35" if "!Python 3!"=="[ ] Python 3" (set "Python 3=[x] Python 3") else set "Python 3=[ ] Python 3"
if "!choice!"=="36" if "!Java Runtime Environment 8!"=="[ ] Java Runtime Environment 8" (set "Java Runtime Environment 8=[x] Java Runtime Environment 8") else set "Java Runtime Environment 8=[ ] Java Runtime Environment 8"
if "!choice!"=="37" if "!Node.JS!"=="[ ] Node.JS" (set "Node.JS=[x] Node.JS") else set "Node.JS=[ ] Node.JS"

REM GAMES LAUNCHER
if "!choice!"=="38" if "!Steam!"=="[ ] Steam" (set "Steam=[x] Steam") else set "Steam=[ ] Steam"
if "!choice!"=="39" if "!GOG Galaxy!"=="[ ] GOG Galaxy" (set "GOG Galaxy=[x] GOG Galaxy") else set "GOG Galaxy=[ ] GOG Galaxy"
if "!choice!"=="40" if "!Epic Games!"=="[ ] Epic Games" (set "Epic Games=[x] Epic Games") else set "Epic Games=[ ] Epic Games"
if "!choice!"=="41" if "!Uplay!"=="[ ] Uplay" (set "Uplay=[x] Uplay") else set "Uplay=[ ] Uplay"
if "!choice!"=="42" if "!Battle.net!"=="[ ] Battle.net" (set "Battle.net=[x] Battle.net") else set "Battle.net=[ ] Battle.net"
if "!choice!"=="43" if "!Origin!"=="[ ] Origin" (set "Origin=[x] Origin") else set "Origin=[ ] Origin"

REM OTHERS
if "!choice!"=="44" if "!VirtualBox!"=="[ ] VirtualBox" (set "VirtualBox=[x] VirtualBox") else set "VirtualBox=[ ] VirtualBox"
if "!choice!"=="45" if "!VMware Workstation Pro!"=="[ ] VMware Workstation Pro" (set "VMware Workstation Pro=[x] VMware Workstation Pro") else set "VMware Workstation Pro=[ ] VMware Workstation Pro"
if "!choice!"=="46" if "!VMware Workstation Player!"=="[ ] VMware Workstation Player" (set "VMware Workstation Player=[x] VMware Workstation Player") else set "VMware Workstation Player=[ ] VMware Workstation Player"
if "!choice!"=="47" if "!TeamViewer!"=="[ ] TeamViewer" (set "TeamViewer=[x] TeamViewer") else set "TeamViewer=[ ] TeamViewer"
if "!choice!"=="48" if "!AnyDesk!"=="[ ] AnyDesk" (set "AnyDesk=[x] AnyDesk") else set "AnyDesk=[ ] AnyDesk"
if "!choice!"=="49" if "!qBittorrent!"=="[ ] qBittorrent" (set "qBittorrent=[x] qBittorrent") else set "qBittorrent=[ ] qBittorrent"
if "!choice!"=="50" if "!Bulk Crap Uninstaller!"=="[ ] Bulk Crap Uninstaller" (set "Bulk Crap Uninstaller=[x] Bulk Crap Uninstaller") else set "Bulk Crap Uninstaller=[ ] Bulk Crap Uninstaller"
if "!choice!"=="51" if "!Everything!"=="[ ] Everything" (set "Everything=[x] Everything") else set "Everything=[ ] Everything"
if "!choice!"=="52" if "!MSI Afterburner!"=="[ ] MSI Afterburner" (set "MSI Afterburner=[x] MSI Afterburner") else set "MSI Afterburner=[ ] MSI Afterburner"

REM Recommended to install
if "!choice!"=="53" if "!Visual C++ Redistributables!"=="[ ] Visual C++ Redistributables" (set "Visual C++ Redistributables=[x] Visual C++ Redistributables") else set "Visual C++ Redistributables=[ ] Visual C++ Redistributables"
if "!choice!"=="54" if "!DirectX!"=="[ ] DirectX" (set "DirectX=[x] DirectX") else set "DirectX=[ ] DirectX"
if "!choice!"=="55" if "!.NET Framework 4.8!"=="[ ] .NET Framework 4.8" (set ".NET Framework 4.8=[x] .NET Framework 4.8") else set ".NET Framework 4.8=[ ] .NET Framework 4.8"

REM Exit Script
if "!choice!"=="56" call:EXIT

for /l %%i in (1,1,56) do if "!choice!"=="%%i" goto APPS_MENU
if "!choice!"=="" (
    for %%i in (!APPS_MENU!) do if "!%%~i!"=="[x] %%~i" goto APPS_INSTALL
    echo                                                    ERROR: "!choice!" is not a valid choice...
    timeout /t 3 /nobreak >nul 2>&1
    goto APPS_MENU
)
echo                                                         ERROR: "!choice!" is not a valid choice...
timeout /t 3 /nobreak >nul 2>&1
goto APPS_MENU

:APPS_INSTALL

REM WEB BROWSERS
if "!Google Chrome!"=="[x] Google Chrome" call:CHOCO googlechrome
if "!Mozilla Firefox!"=="[x] Mozilla Firefox" call:CHOCO firefox
if "!Brave!"=="[x] Brave" call:CHOCO brave
if "!Opera GX!"=="[x] Opera GX" call:CHOCO opera-gx
if "!Microsoft WebView!"=="[x] Microsoft WebView" call:CHOCO webview2-runtime
if "!Vivaldi!"=="[x] Vivaldi" call:CHOCO vivaldi

REM MEDIA
if "!Deezer!"=="[x] Deezer" call:CHOCO deezer
if "!Spotify!"=="[x] Spotify" call:CHOCO spotify
if "!iTunes!"=="[x] iTunes" call:CHOCO itunes
if "!PotPlayer!"=="[x] PotPlayer" call:CHOCO potplayer
if "!VLC media player!"=="[x] VLC media player" call:CHOCO vlc
if "!Audacity!"=="[x] Audacity" call:CHOCO audacity
if "!OBS Studio!"=="[x] OBS Studio" call:CHOCO obs-studio

REM IMAGING
if "!ImageGlass!"=="[x] ImageGlass" call:CHOCO imageglass
if "!ShareX!"=="[x] ShareX" call:CHOCO sharex
if "!GIMP!"=="[x] GIMP" call:CHOCO gimp

REM MESSAGING
if "!Discord!"=="[x] Discord" call:CHOCO discord
if "!TeamSpeak!"=="[x] TeamSpeak" call:CHOCO teamspeak
if "!Teams!"=="[x] Teams" call:CHOCO microsoft-teams
if "!Zoom!"=="[x] Zoom" call:CHOCO zoom
if "!Slack!"=="[x] Slack" call:CHOCO slack

REM DOCUMENTS
if "!Adobe Acrobat Reader!"=="[x] Adobe Acrobat Reader" call:CHOCO adobereader
if "!Foxit Reader!"=="[x] Foxit Reader" call:CHOCO foxitreader
if "!Microsoft Office!"=="[x] Microsoft Office" call:CHOCO office-tool
if "!Libre Office!"=="[x] Libre Office" call:CHOCO libreoffice-fresh

REM COMPRESSION
if "!7zip!"=="[x] 7zip" call:CHOCO 7zip.install
if "!Winrar!"=="[x] Winrar" call:CHOCO winrar

REM DEVELOPER TOOLS
if "!Visual Studio Code!"=="[x] Visual Studio Code" call:CHOCO vscode
if "!Notepad++!"=="[x] Notepad++" call:CHOCO notepadplusplus
if "!Github!"=="[x] Github" call:CHOCO github-desktop
if "!Git!"=="[x] Git" call:CHOCO git
if "!FileZilla!"=="[x] FileZilla" call:CHOCO filezilla
if "!WinSCP!"=="[x] WinSCP" call:CHOCO winscp
if "!PuTTY!"=="[x] PuTTY" call:CHOCO putty
if "!Python 3!"=="[x] Python 3" call:CHOCO python
if "!Java Runtime Environment 8!"=="[x] Java Runtime Environment 8" call:CHOCO jre8
if "!Node.JS!"=="[x] Node.JS" call:CHOCO nodejs

REM GAMES LAUNCHER
if "!Steam!"=="[x] Steam" call:CHOCO steam
if "!GOG Galaxy!"=="[x] GOG Galaxy" call:CHOCO goggalaxy
if "!Epic Games!"=="[x] Epic Games" call:CHOCO epicgameslauncher
if "!Uplay!"=="[x] Uplay" call:CHOCO uplay
if "!Battle.net!"=="[x] Battle.net" call:CHOCO battle.net
if "!Origin!"=="[x] Origin" call:CHOCO origin

REM OTHERS
if "!VirtualBox!"=="[x] VirtualBox" call:CHOCO virtualbox
if "!VMware Workstation Pro!"=="[x] VMware Workstation Pro" call:CHOCO vmwareworkstation
if "!VMware Workstation Player!"=="[x] VMware Workstation Player" call:CHOCO vmware-workstation-player
if "!TeamViewer!"=="[x] TeamViewer" call:CHOCO teamviewer
if "!AnyDesk!"=="[x] AnyDesk" call:CHOCO anydesk
if "!qBittorrent!"=="[x] qBittorrent" call:CHOCO qbittorrent
if "!Bulk Crap Uninstaller!"=="[x] Bulk Crap Uninstaller" call:CHOCO bulk-crap-uninstaller
if "!Everything!"=="[x] Everything" call:CHOCO everything
if "!MSI Afterburner!"=="[x] MSI Afterburner" call:CHOCO msiafterburner

REM Recommended to install
if "!Visual C++ Redistributables!"=="[x] Visual C++ Redistributables" call:CHOCO vcredist-all
if "!DirectX!"=="[x] DirectX" call:CHOCO directx
if "!.NET Framework 4.8!"=="[x] .NET Framework 4.8" call:CHOCO dotnetfx
goto APPS_MENU_CLEAR


REM =====================================================
REM ==================    FUNCTIONS    ==================
REM =====================================================

:POWERSHELL
chcp 437 >nul 2>&1 & powershell -nop -noni -exec bypass -c %* >nul 2>&1 & chcp 65001 >nul 2>&1
goto:eof

:CHOCO [Package]
if not exist "%ProgramData%\chocolatey" call:POWERSHELL "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && set "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin" & call "%ProgramData%\chocolatey\bin\RefreshEnv.cmd" && choco install chocolatey-core.extension --limit-output --ignore-checksums
choco install -y --limit-output --ignore-checksums %*
goto:eof

:CURL [Argument] [URL] [Directory]
if not exist "%WinDir%\System32\curl.exe" if not exist "%ProgramData%\chocolatey\lib\curl" call:CHOCO curl
if "%~1"=="0" curl -k -L --progress-bar "%~2" --create-dirs -o "%~3"
if "%~1"=="1" curl --silent "%~2" --create-dirs -o "%~3"
goto:eof

:UNZIP [FilePath] [DestinationPath]
call:POWERSHELL "Expand-Archive -Path '%~1' -DestinationPath '%~2'"
goto:eof

:EXIT
exit
