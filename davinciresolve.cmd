@echo off

rem Set the base directory
set "base_dir=C:\vol0\CacheClip"

rem Go to the base directory
cd /d %base_dir%

rem Iterate over the folders in the base directory
for /d %%F in (*) do (

    rem Go to the current folder
    cd /d %%F

    rem Read the third line from the Info.txt file
    for /f "skip=2 tokens=*" %%L in (Info.txt) do (

        rem Print the folder name and the line from the Info.txt file
        echo %%F: %%L
    )

    rem Go back to the base directory
    cd /d %base_dir%
)