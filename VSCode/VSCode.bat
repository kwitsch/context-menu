@echo off
cd %1
if %ERRORLEVEL% NEQ 0 (
	start /B cmd /c code %1 >NUL 2>&1
	exit /B 0
)

set _devcontainer=0
if exist .devcontainer\ set _devcontainer=1
if exist .devcontainer.json set _devcontainer=1
if %_devcontainer%==1 (
	WHERE devcontainer >nul 2>nul
	IF %ERRORLEVEL% NEQ 0 set _devcontainer=0
)
if %_devcontainer%==1 (
	start /B cmd /c devcontainer open . >NUL 2>&1
)else (
	start /B cmd /c code . >NUL 2>&1
)
exit

