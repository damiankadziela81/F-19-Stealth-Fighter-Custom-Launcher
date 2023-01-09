@echo off
cls
:main
ECHO [1;32m[42m
ECHO ษออออออ F-19 Stealth Fighter Scenario Selector ออออออป
ECHO บ  1) Central Europe                                 บ
ECHO บ  2) Middle East                                    บ
ECHO บ  3) Vietnam                                        บ
ECHO บ Note: Selected Scenario will be available at       บ
ECHO บ [1;36mCentral Europe[1;32m slot in the game menu.              บ
ECHO ฬอออออออออออออออออออ Pilot Backup อออออออออออออออออออน
ECHO บ  4) Save backup roster                             บ
ECHO บ  5) Restore backup roster                          บ
ECHO ฬอออออออออออออ External Model Selector ออออออออออออออน
ECHO บ  6) Select F-19 3d model                           บ
ECHO บ  7) Select F-117 3d model                          บ
ECHO ฬออออออออออออออออออออออออออออออออออออออออออออออออออออน
ECHO บ  8) Exit to DOS                                    บ
ECHO บ  9) Exit to Host OS                                บ
ECHO บ  0) Start the game                                 บ
ECHO ศอออออออออออออออออออออออออออออออออออออออ[5m[1;33m by damson [0m[1;32m[42mออผ
ECHO [0m

choice /c1234567890s /s Select your option [0-9]: /n
if errorlevel 11 goto secret
if errorlevel 10 goto game
if errorlevel 9 goto exit
if errorlevel 8 goto cmd
if errorlevel 7 goto f117
if errorlevel 6 goto f19
if errorlevel 5 goto restore
if errorlevel 4 goto save
if errorlevel 3 goto vn
if errorlevel 2 goto me
if errorlevel 1 goto ce

:ce
copy ce\*.* .
cls
ECHO [5m[1;35mCENTRAL EUROPE LOADED[0m
goto main

:me
copy me\*.* .
cls
ECHO [5m[1;35mMIDDLE EAST LOADED[0m
goto main

:vn
copy vn\*.* .
cls
ECHO [5m[1;35mVIETNAM LOADED[0m
goto main

:save
IF EXIST .\backup\roster.fil goto savexist
IF NOT EXIST .\backup\roster.fil goto savey
:savexist
cls
choice /cyn /s [1;31mARE YOU SURE, THIS WILL OVERWRITE YOUR BACKUP ROSTER? [Y/N][0m /n
if errorlevel 2 goto saven
if errorlevel 1 goto savey
:saven
cls
ECHO [5m[1;31mROSTER NOT SAVED[0m
goto main
:savey
copy roster.fil .\backup
cls
ECHO [5m[1;31mROSTER SAVED[0m
goto main

:restore
IF EXIST .\backup\roster.fil goto filexist
IF NOT EXIST .\backup\roster.fil goto nofile
:filexist
cls
choice /cyn /s [1;31mARE YOU SURE, THIS WILL OVERWRITE YOUR CURRENT ROSTER? [Y/N][0m /n
if errorlevel 2 goto restoren
if errorlevel 1 goto restorey
:restoren
cls
ECHO [5m[1;32mROSTER NOT RESTORED[0m
goto main
:restorey
copy .\backup\roster.fil .
cls 
ECHO [5m[1;32mROSTER RESTORED[0m
goto main
:nofile
cls
ECHO [1;31mThere is no backup yet, make one first![0m
goto main

:f19
copy .\3dmodel\stflt19.3d3 stflt.3d3
cls
ECHO [5m[1;34mF-19 3D MODEL LOADED[0m
goto main

:f117
copy .\3dmodel\stflt117.3d3 stflt.3d3
cls
ECHO [5m[1;34mF-117 3D MODEL LOADED[0m
goto main

:exit
exit

:cmd
cls
goto end

:game
f19 /aa
goto main

:secret
cls
ECHO [1;37m[44m
ECHO ษอออ F-19 Stealth Fighter Secret Sound Board Selector อออป
ECHO บ  1) PC Speaker                                         บ
ECHO บ  2) Tandy                                              บ
ECHO บ  3) Adlib                                              บ
ECHO บ  4) Roland                                             บ
ECHO บ  5) Go back to previous menu                           บ
ECHO ฬออออออออออออออ Emulation Considerations ออออออออออออออออน
ECHO บ For Roland to work properly you need MT32.ROM file     บ
ECHO บ and MUNT or Special DOSBox build that supports it.     บ
ECHO บ For Tandy to work change [1;32mmachine=tandy[1;37m in [1;32mdosbox.conf[1;37m  บ
ECHO บ and select [1;33m3) Tandy 1000 (16 colors)[1;37m graphics mode.    บ
ECHO ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO [0m
choice /c12345 /s Select your option [1-5]: /n
if errorlevel 5 goto back
if errorlevel 4 f19 /ar
if errorlevel 3 f19 /aa
if errorlevel 2 f19 /at
if errorlevel 1 f19
goto main

:back
cls
goto main

:end
