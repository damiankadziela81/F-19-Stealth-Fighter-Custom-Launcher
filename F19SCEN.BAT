@echo off
cls
:main
ECHO [1;32m[42m
ECHO ษออออออ F-19 Stealth Fighter Scenario Selector ออออออป
ECHO บ  1) Central Europe                                 บ
ECHO บ  2) Middle East                                    บ
ECHO บ  3) Vietnam                                        บ
ECHO ฬอออออออออออออออออออ Pilot Backup อออออออออออออออออออน
ECHO บ  4) Save backup roster                             บ
ECHO บ  5) Restore backup roster                          บ
ECHO ฬอออออออออออออ External Model Selector ออออออออออออออน
ECHO บ  6) Select F-19 3d model                           บ
ECHO บ  7) Select F-117 3d model                          บ
ECHO ฬออออออออออออออออออออออออออออออออออออออออออออออออออออน
ECHO บ  8) Exit to DOS                                    บ
ECHO บ  9) Exit to Host OS                                บ
ECHO ฬออออออออออออออออออออออออออออออออออออออออออออออออออออน
ECHO บ  Choose [1;36mCentral Europe[1;32m in game.                    บ
ECHO ศอออออออออออออออออออออออออออออออออออออออ[5m[1;33m by damson [0m[1;32m[42mออผ
ECHO [0m

choice /c123456789 /s Choose your scenario / option [1-9]: /n
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
f19 /aa
exit

:me
copy me\*.* .
f19 /aa
exit

:vn
copy vn\*.* .
f19 /aa
exit

:save
copy roster.fil .\backup
cls
ECHO [5m[1;31mROSTER SAVED[0m
goto main

:restore
copy .\backup\roster.fil .
cls 
ECHO [5m[1;32mROSTER RESTORED[0m
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