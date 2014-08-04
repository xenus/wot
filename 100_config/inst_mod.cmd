@ECHO OFF
setlocal
set _FolderPath=%~d0%~p0
set a_wDir=audio
set a_fExt1=fsb
set a_fExt2=fev
set t_wDir=text\LC_MESSAGES
set t_fExt1=mo
cd /d "%_FolderPath%"

set "_RESULT="
  For /F "tokens=*" %%i in ('dir /AD /B /ON .\res_mods\0.* 2^>Nul') do (call :_getMaxInt %%i%~3)
set _mod_ver=%_RESULT%
echo.%_mod_ver%

echo.Cleanup
del /F /Q %_FolderPath%\*.log

echo.install audio
call :_setup a
echo.install text
call :_setup t
if exist "%_FolderPath%res_mods\%_mod_ver%\vehicles\" ( 
echo.fix 0.9.x
cd %_FolderPath%res_mods\%_mod_ver%\vehicles\
NamesFix.cmd
)

ENDLOCAL
  exit /b /0

:_setup
  del /F /Q %temp%\xtmp.txt 2>Nul
  call :_initVar %1
if exist "%_wDir%" ( 
  if /i 99%_fExt1% NEQ 99 ( dir /b %_wDir%\*.%_fExt1% >> %temp%\xtmp.txt )
  if /i 99%_fExt2% NEQ 99 ( dir /b %_wDir%\*.%_fExt2% >> %temp%\xtmp.txt )
  if /i 99%_fExt3% NEQ 99 ( dir /b %_wDir%\*.%_fExt3% >> %temp%\xtmp.txt )
  For /F "tokens=*" %%i in (%temp%\xtmp.txt) do ren %_wDir%\%%i %%ix
  if /i 99%_fExt1% NEQ 99 ( copy /V /Y %_sDir%\*.%_fExt1% %_wDir% >Nul )
  if /i 99%_fExt2% NEQ 99 ( copy /V /Y %_sDir%\*.%_fExt2% %_wDir% >Nul )
  if /i 99%_fExt3% NEQ 99 ( copy /V /Y %_sDir%\*.%_fExt3% %_wDir% >Nul )
  For /F "tokens=*" %%i in (%temp%\xtmp.txt) do del %_wDir%\%%i 2>Nul
  if /i 99%_fExt1% NEQ 99 ( ren %_wDir%\*.%_fExt1%x *.%_fExt1% )
  if /i 99%_fExt2% NEQ 99 ( ren %_wDir%\*.%_fExt2%x *.%_fExt2% )
  if /i 99%_fExt3% NEQ 99 ( ren %_wDir%\*.%_fExt3%x *.%_fExt3% )
)
  exit /b /0

:_initVar
if %1==a (
  set _wDir=%_FolderPath%res_mods\%_mod_ver%\%a_wDir%
  set _sDir=%_FolderPath%res\%a_wDir%
  set _fExt1=%a_fExt1%
  set _fExt2=%a_fExt2%
  set _fExt3=%a_fExt3%
)
if %1==t (
  set _wDir=%_FolderPath%res_mods\%_mod_ver%\%t_wDir%\
  set _sDir=%_FolderPath%res\%t_wDir%
  set _fExt1=%t_fExt1%
  set _fExt2=%t_fExt2%
  set _fExt3=%t_fExt3%
)
  exit /b /0

:_getMaxInt
  if /i 99%_RESULT% NEQ 99 ( set _t0=%_RESULT:0.=% ) else ( set _t0=0.0 )
  set _t0=%_t0:.=%
  set _t1=%~1
  set _t1=%_t1:0.=%
  set _t1=%_t1:.=%
  if /i %_t1% GTR %_t0% set _RESULT=%~1
  exit /b /0