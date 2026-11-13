@echo
title Apply Windows 11 GPOS
cls

:: Unzip stig
mkdir "stigs"
mkdir "win11Stig"

curl -o stig.zip https://dl.dod.cyber.mil/wp-content/uploads/stigs/zip/U_STIG_GPO_Package_October_2026.zip
tar -xf ".\stig.zip" -C ".\stigs" 
move ".\stigs\DoD Windows 11 v2r11\*" ".\win11Stig"
rmdir /s /q .\stig.zip

:: Unzip LGPO 
@REM mkdir "LGPO"

@REM curl -o LGPO.zip https://download.microsoft.com/download/8/5/c/85c25433-a1b0-4ffa-9429-7e023e7da8d8/LGPO.zip
@REM tar -xf ".\LGPO.zip" -C ".\LGPO"
@REM robocopy ".\LGPO\LGPO_30\LGPO.exe" ".\LGPO.exe" /e /move
@REM rmdir /s /q ".\LGPO"

@REM :: Apply GPOS
@REM @REM ::".\LGPO.exe /g .\win11Strig"

pause
exit