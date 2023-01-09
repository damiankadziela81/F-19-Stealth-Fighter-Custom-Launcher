@echo off
cls
:main
ECHO [1;32m[42m
ECHO === F-19 Stealth Fighter Scenario Selector ===
ECHO   1) Central Europe                          .
ECHO   2) Middle East                             .
ECHO   3) Vietnam                                 .
ECHO  ------------------------------------------- .
ECHO   4) Save backup roster                      .
ECHO   5) Restore backup roster                   .
ECHO  ------------------------------------------- .
ECHO   6) Command Line                            .
ECHO   7) Exit                                    .
ECHO  ------------------------------------------- .
ECHO   Choose [1;36mCentral Europe[1;32m in game.             .
ECHO  ------------------------------------------- .
ECHO [5m[1;33m  by damson[0m[1;32m[42m                                  .
ECHO ==============================================
ECHO [0m

choice /c1234567 /s Chose your scenario / option? [1-7]: /n
if errorlevel 7 goto exit
if errorlevel 6 goto cmd
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

:exit
exit

:cmd
cls