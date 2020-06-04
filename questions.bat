:::: SET YYYYMMDD format for date
FOR /F "TOKENS=2-4 DELIMS=/ " %%A IN ("%DATE%") DO SET "DT=%%C%%B%%A"

:SetCheckFile
SET CheckDir=C:\COVIDQuestionnaire
SET checkfile=%CheckDir%\COVIDQuestionnaire_%DT%.txt
IF NOT EXIST "%CheckDir%" MD "%CheckDir%"
IF EXIST "%checkfile%" GOTO EOF
ECHO Creating the check file for date %DT% to ensure only one Version Backup run for the day>>"%checkfile%"

:StartApp
START explorer.exe "https://docs.google.com/forms/d/e/1FAIpQLSepEY-Hj7XFxCc5QhSXvNTAkQn6xx6z5QjeEF03pyh9MWGgEQ/viewform?vc=0&c=0&w=1"

GOTO EOF
