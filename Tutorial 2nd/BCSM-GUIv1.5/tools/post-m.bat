tools\DSPADPCM -e tmp/m.wav tmp/m.DSP %1 -ctmp/newC12M.txt
tools\revb --build out.brstm tmp/m.dsp
del /Q tmp\*