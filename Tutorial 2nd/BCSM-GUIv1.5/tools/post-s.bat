tools\DSPADPCM -e tmp/l.wav tmp/l.DSP %1 -ctmp/newC12L.txt
tools\DSPADPCM -e tmp/r.wav tmp/r.DSP %1 -ctmp/newC12R.txt
tools\revb --build out.brstm tmp/l.dsp tmp/r.dsp
del /Q tmp\* 