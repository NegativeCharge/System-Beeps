cd ".\system_beeps\screens"
IF NOT EXIST cover.exo ..\Tools\exomizer\v3.1.0\exomizer.exe level -M256 -P+16-32 -c cover.bin@0x0000 -o cover.exo
IF NOT EXIST menu.exo ..\Tools\exomizer\v3.1.0\exomizer.exe level -M256 -P+16-32 -c menu.bin@0x0000 -o menu.exo

cd ..\..
BeebAsm.exe -i .\system_beeps\loader.s.6502 -do .\system_beeps.ssd -opt 3