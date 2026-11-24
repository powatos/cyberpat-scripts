REM This script automatically downloads and applies a handful of GPOS.
REM Do not interrupt until script finishes

@echo
title Apply GPOS
cls

:: Unzip stig
mkdir "stigs"

curl -o stig.zip https://dl.dod.cyber.mil/wp-content/uploads/stigs/zip/U_STIG_GPO_Package_October_2026.zip
tar -xf ".\stig.zip" -C ".\stigs"
del /f /q ".\stig.zip"

:: Unzip LGPO 

curl -o LGPO.zip https://download.microsoft.com/download/8/5/c/85c25433-a1b0-4ffa-9429-7e023e7da8d8/LGPO.zip
tar -xf ".\LGPO.zip"
move "LGPO_30\LGPO.exe" ".\"
del /f /q ".\LGPO.zip" 
rmdir /s /q ".\LGPO_30\"

:: Apply GPOS
".\LGPO.exe" /g .\stigs\

:: Cleanup
del /f /q "LGPO.exe"
rmdir /s /q "stigs\"

@echo "ALL GPOS APPLIED"

pause
exit