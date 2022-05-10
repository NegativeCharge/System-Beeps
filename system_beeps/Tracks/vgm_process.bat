@echo off
rem| VGM audio compile script
rem| @simondotm

echo Processing >vgm_process.txt

rem|---- compile the music ----

del vgm_out\*.bbc.vgm
rem del vgm_out\*.bin
del vgm_out\*.exo
rem for %%x in (vgm\*.vgm) do python27\python.exe bin\vgmconverter.py "%%x" -n -q 120 -r "vgm_out\%%~nx.bin" -o "vgm_out\%%~nx.bbc.vgm" >>vgm_process.txt
for %%x in (vgm_out\*.bin) do bin\exomizer.exe raw -c -m 2048 "%%x" -o "vgm_out\%%~nx.bin.exo" >>vgm_process.txt