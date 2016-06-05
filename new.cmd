@ECHO OFF
setlocal enabledelayedexpansion enableextensions
set _CMD_name=%~nx0
set _FolderPath=%~d0%~p0
SET PATH=%PATH%;%_FolderPath%_bin
set /p _mod_ver=<"%_FolderPath%ver"
cd /d "%_FolderPath%"

echo.# init
call :_RD .\_set
mkdir .\_set\res_mods\%_mod_ver% 2>Nul

ECHO Install Packege
call :_xFor "' dir /AD /B /ON ???_*'" "call :_InstPck %_FolderPath% "
::call :_InstPck "%_FolderPath%" 013_InfoPanel

echo.# end.
pause >Nul
endlocal
exit /b

::#######################
:Backup
::::::::::::
  exit /b /0

:_InstPck
echo.[%~2]
  set _Pck_dir=%~1%~2
  cd %_Pck_dir%
  call :_RD .\_tmp

if exist "%_Pck_dir%\u.rules" (
echo  * unpack
  mkdir .\_tmp 2>Nul
  call :_xFor "%_Pck_dir%\u.rules" "call :_UnPack " )


set "_RESULT="
  For /F "tokens=*" %%i in ('dir /AD /B /ON .\_tmp\0.* 2^>Nul') do (call :_getMaxInt %%i%~3)
set _mod_ver_pck_hi=%_RESULT%


if exist "%_Pck_dir%\m.rules" (
  if exist "%_Pck_dir%\fdn.rules" (
echo  * fix dir name
    set /p _FixDirName_arg=<"%_Pck_dir%\fdn.rules"
    if exist .\_tmp!_FixDirName_arg! ( call :_xFor "' dir .\_tmp!_FixDirName_arg! /b /ad'" " call :_FixDirName_param " ))
echo  * copy
  call :_xFor "%_Pck_dir%\m.rules" "call :_Pck_move " )

if exist "%_Pck_dir%\p.rules" (
echo  * patch
  call :_xFor_m0 " 'dir %_FolderPath%\_set\*.xndiff /B /S'" "call :_Pck_patch " )

if exist "%_Pck_dir%\r.rules" (
echo  * run batch
  call :_xFor_m0 " 'dir %_FolderPath%\_set\*.cmd /B /S'" "call :_Pck_batch " )

echo  * clean
  call :_RD .\_tmp >Nul
  cd %_FolderPath%
  exit /b /0

:_Pck_patch
CHCP 866 >Nul
  patch < %*
  del /F /Q %*
  cd %_Pck_dir%
  exit /b /0

:_Pck_batch
CHCP 866 >Nul
echo cd
echo %*
echo  cd %_Pck_dir%
  exit /b /0

:_FixDirName_param
CHCP 866 >Nul
  set "file=%*"
  ren ".\_tmp%_FixDirName_arg%\%*" %file: =_%
  exit /b /0

:_UnPack
CHCP 866 >Nul
  7z.exe x -o.\_tmp\%~2 -y %~1 >Nul
  exit /b /0

:_Pck_move
CHCP 866 >Nul
set "_tmp="
  if /i %~1==-2 ( set "_tmp=/S" )
  if /i %~1 GEQ 0 ( set "_tmp=/MOVE" )
  if /i %~1==1 ( set "_tmp=/S %_tmp%" )
  if /i %~1==2 ( set "_tmp=/E %_tmp%" )
  robocopy %_Pck_dir%\_tmp\%~2 %_FolderPath%_set\%~3 %~4 %_tmp% >Nul
  exit /b /0

:_getMaxInt
  if /i 99%_RESULT% NEQ 99 ( set _t0=%_RESULT:0.=% ) else ( set _t0=0.0 )
  set _t0=%_t0:.=%
  set _t1=%~1
  set _t1=%_t1:0.=%
  set _t1=%_t1:.=%
::echo.%_t1%^>%_t0%
  if /i %_t1% GTR %_t0% set _RESULT=%~1
  exit /b /0

:_xFor_m0
CHCP 1251 >Nul
  For /F "tokens=*" %%i in (%~1) do (cd %%~dpi&%~2%%~nxi)
CHCP 866 >Nul
  exit /b /0

:_xFor
CHCP 1251 >Nul
  For /F "tokens=*" %%i in (%~1) do (%~2%%i%~3)
CHCP 866 >Nul
  exit /b /0

:_RD
  del /F /S /Q %~1\* >Nul 2>Nul
  ping -n 2 127.0.0.1 >Nul 2>Nul
  rmdir /S /Q %~1 >Nul 2>Nul
  exit /b /0

rem Parse passed arguments to script
:parse_passed_params
  if "%~1"=="" goto end_parse_passed_params
  if "%~1"=="-e"        set ExitOnComplete=1
  if "%~1"=="-exit"     set ExitOnComplete=1
  if "%~1"=="-kb"       set UninstallUpdates=0
  if "%~1"=="-hotfixes" set UninstallUpdates=0
  if "%~1"=="-d"        set DisableUpdates=0
  if "%~1"=="-disable"  set DisableUpdates=0
  if "%~1"=="-t"        set DisableTasks=0
  if "%~1"=="-tasks"    set DisableTasks=0
  if "%~1"=="-s"        set DisableServices=0
  if "%~1"=="-services" set DisableServices=0
  if "%~1"=="-i"        set BlockIPaddresses=0
  if "%~1"=="-ip"       set BlockIPaddresses=0
  if "%~1"=="-f"        set BlockIPaddressesWithFirewall=0
  if "%~1"=="-firewall" set BlockIPaddressesWithFirewall=0
  if "%~1"=="-h"        set AddDomainsToHosts=0
  if "%~1"=="-hosts"    set AddDomainsToHosts=0
  if "%~1"=="-u"        set DisableAutomaticUpdates=0
  if "%~1"=="-updates"  set DisableAutomaticUpdates=0
  if "%~1"=="-l"        set WriteLogFile=0
  if "%~1"=="-log"      set WriteLogFile=0
  shift & goto parse_passed_params
:end_parse_passed_params