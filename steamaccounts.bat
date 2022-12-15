@echo off

rem Set the starting folder
set folder="C:\Program Files (x86)\Steam\userdata"
set propertyName=PersonaName

rem Loop through each subfolder in the starting folder
for /D %%d in (%folder%\*) do (
    rem Check if the subfolder contains a "config" folder
    if exist "%%d\config" (
        rem Check if the "config" folder contains a "localconfig.vdf" file
        if exist "%%d\config\localconfig.vdf" (
            for /f "delims=" %%a in ('findstr /r /c:"\"%propertyName%\"" "%%d\config\localconfig.vdf"') do (
            echo "%%d":%%a
            )
        )
    )
)