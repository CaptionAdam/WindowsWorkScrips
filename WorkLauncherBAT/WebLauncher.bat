ECHO OFF
CLS
:MENU
CLS
ECHO.
ECHO ........................................................
ECHO :   PRESS # TO LAUNCH SELECTED PRINTER WEB INTERFACE   :
ECHO :     OR LAUNCH SELECTED WEB INTERFACE FOR UTILITY     :
ECHO :......................................................:
ECHO                .........................
ECHO                :-------Printers--------:
ECHO                : a  - All Printers     :
ECHO                : 1  - #1 Ender 3 V3 KE :
ECHO                : 2  - #2 Ender 3 V3 KE :
ECHO                : 3  - #3 Ender 3 V3 KE :
ECHO                : 4  - #4 Ender 3 V3 KE :
ECHO                : 5  - #5 Ender 3 V3 KE :
ECHO                : 6  - #6 Ender 3 V3 KE :
ECHO                :------Other Shit-------:
ECHO                : l  - Laser Control    :
ECHO                : o  - OMV              :
ECHO                :--------Options--------:
ECHO                : s  - SSH Launcher     :
ECHO                : c  - CMD List         :
ECHO                : q  - EXIT             :
ECHO                :.......................:
ECHO.

SET /P M=Enter Charecter Then Press Enter Key:
IF %M%==a GOTO ALLENDER
IF %M%==1 GOTO ENDER1
IF %M%==2 GOTO ENDER2
IF %M%==3 GOTO ENDER3
IF %M%==4 GOTO ENDER4
IF %M%==5 GOTO ENDER5
IF %M%==6 GOTO ENDER6
IF %M%==l GOTO Laser
IF %M%==o GOTO OMV
IF %M%==r GOTO MENU
IF %M%==s GOTO SSH
IF %M%==c GOTO CmdList
IF %M%==e GOTO Edit
IF %M%==q GOTO EOF

:ENDER1
start "" http://ender3-1:4409/
GOTO EOF

:ENDER2
start "" http://ender3-2:4409/
GOTO EOF

:ENDER3
start "" http://ender3-3:4409//
GOTO EOF

:ENDER4
start "" http://ender3-4:4409/
GOTO EOF

:ENDER5
start "" http://ender3-5:4409/
GOTO EOF

:ENDER6
start "" http://ender3-6:4409/
GOTO EOF

:OMV
start "" http://rctshoppi1/
GOTO EOF

:ROUTER
start "" http://192.168.0.1/
GOTO EOF

:Laser
start "" http://laserpi/
GOTO EOF

:ALLENDER
SET BROWSER=chrome.exe
SET WAIT_TIME=2
START %BROWSER% -new-window "http://ender3-1:4409/"
START "" "http://ender3-2:4409/"
START "" "http://ender3-3:4409/"
START "" "http://ender3-4:4409/"
START "" "http://ender3-5:4409/"
START "" "http://ender3-6:4409/"
GOTO EOF

:CmdList
START "" notepad.exe %~dp0CmdList.txt
GOTO EOF

:Edit
START "" notepad.exe %~dp0WebLauncher.bat
GOTO EOF

:SSH
CLS
ECHO.
ECHO ........................................................
ECHO :           Select Device to Connect VIA SSH           :
ECHO :......................................................:
ECHO                .........................
ECHO                :-------Printers--------:
ECHO                : 1  - #1 Ender 3 V3 KE :
ECHO                : 2  - #2 Ender 3 V3 KE :
ECHO                : 3  - #3 Ender 3 V3 KE :
ECHO                : 4  - #4 Ender 3 V3 KE :
ECHO                : 5  - #5 Ender 3 V3 KE :
ECHO                : 6  - #6 Ender 3 V3 KE :
ECHO                :------Other Shit-------:
ECHO                : o  - OMV              :
ECHO                : l  - Laser Control    :
ECHO                :--------Options--------:
ECHO                : s  - SSH Launcher     :
ECHO                : c  - CMD List         :
ECHO                : q  - EXIT             :
ECHO                :.......................:
ECHO.

SET /P M=Type Enter Charecter Then Press Enter Key:
IF %M%==1 GOTO ENDER1-SSH
IF %M%==2 GOTO ENDER2-SSH
IF %M%==3 GOTO ENDER3-SSH
IF %M%==4 GOTO ENDER4-SSH
IF %M%==5 GOTO ENDER5-SSH
IF %M%==6 GOTO ENDER6-SSH
IF %M%==o GOTO OMV-SSH
IF %M%==l GOTO USBIP-SSH
IF %M%==9 GOTO SlaveServer-SSH
IF %M%==10 GOTO PiVPN
IF %M%==m GOTO MENU
IF %M%==c GOTO CmdList
IF %M%==q GOTO EOF

:ENDER1-SSH
CLS
ECHO PASSWORD: Creality2023
call ssh root@ender3-1
GOTO SSH

:ENDER2-SSH
CLS
ECHO PASSWORD: Creality2023
call ssh root@ender3-2
GOTO SSH

:ENDER3-SSH
CLS
ECHO PASSWORD: Creality2023
call ssh root@ender3-3
GOTO SSH

:ENDER4-SSH
CLS
ECHO PASSWORD: Creality2023
call ssh root@ender3-4
GOTO SSH

:ENDER5-SSH
CLS
ECHO PASSWORD: Creality2023
call ssh root@ender3-5
GOTO SSH

:ENDER6-SSH
CLS
ECHO PASSWORD: Creality2023
call ssh root@ender3-6
GOTO SSH

:OMV-SSH
CLS
ECHO PASSWORD: RCT2024
call ssh pi@rctshoppi1
GOTO SSH

:USBIP-SSH
CLS
ECHO PASSWORD: RCT2024
call ssh LaserPi@laserpi
GOTO SSH

:SlaveServer-SSH
CLS
ECHO PASSWORD: RCT2024
call ssh RCT-pi1@192.168.0.15
GOTO SSH

:PiVPN
CLS
ECHO PASSWORD: RCT2024
call ssh RCTVPN@192.168.0.34
GOTO SSH