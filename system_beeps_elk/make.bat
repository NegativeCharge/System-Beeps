cd ".\system_beeps_elk\screens"
IF NOT EXIST cover.exo ..\Tools\exomizer\v3.1.0\exomizer.exe level -M256 -P+16-32 -c cover.bin@0x0000 -o cover.exo
IF NOT EXIST menu.exo ..\Tools\exomizer\v3.1.0\exomizer.exe level -M256 -P+16-32 -c menu.bin@0x0000 -o menu.exo

cd "..\tracks"
forfiles /s /m *.bin /c "cmd /c IF NOT EXIST @fname.exo .\system_beeps_elk\Tools\exomizer\v2.0.9\exomizer.exe raw -c -m2048 @path -o @fname.exo"

cd ..\..
BeebAsm.exe -i .\system_beeps_elk\loader.s.6502 -do .\system_beeps_elk.ssd -opt 3