@echo off
:loop
echo Rebooting PalServer.

REM ファイルが存在するかチェックしています。
if not exist PalServer.exe (
    echo Error: PalServer.exe not found.
    pause
    exit /b 1
)

REM ここでプロセス起動、引数を渡す場合はここを編集してください。
start /wait PalServer.exe -port=8211 -players=32
echo PalServer has crashed.
goto loop

