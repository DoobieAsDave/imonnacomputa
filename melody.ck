.5 => dac.gain;

[0, 3, 7, 10, 7, 3] @=> int scale[];

TriOsc tri => Pan2 p => NRev rev => dac;

.2 => tri.gain;
.3 => rev.mix;

while(true) {

    for(0 => int i; i < scale.size(); i++) {

        Std.mtof(60 + scale[i]) => tri.freq; 
        Math.random2f(-1, 1) => p.pan;
        200 :: ms => now;

    }

}