tools\revb --extract tools/C12.brstm tmp/C12L.dsp tmp/C12R.dsp
tools\dspadpcm -d tmp/C12L.dsp tmp/l.wav -ctmp/l.txt
tools\dspadpcm -d tmp/C12R.dsp tmp/r.wav -ctmp/r.txt