@echo off

for /f "tokens=*" %%a in (%1) do (
  "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe" --incognito "%%a"
)