@echo off
:loop
echo PalServer���N�����܂�...

REM �t�@�C�������݂��邩�`�F�b�N���Ă��܂��B
if not exist PalServer.exe (
    echo Error: PalServer.exe not found.
    pause
    exit /b 1
)

REM �����Ńv���Z�X�N���A������n���ꍇ�͂�����ҏW���Ă��������B
start /wait PalServer.exe -port=8211 -players=32
echo PalServer has crashed.
echo Rebooting PalServer.
goto loop

