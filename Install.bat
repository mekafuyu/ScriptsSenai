@REM PowerShell.exe Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope LocalMachine
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '.\InstallFlutter.ps1'"
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '.\InstallAndroidCommandLineTools.ps1'"
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '.\InstallAndroidPlatformTools.ps1'"