[0, 3, 7, 10] @=> int scale[];

TriOsc tri => Pan2 p => LPF f => dac;

.1 => tri.gain;


while(true) {

    for(0 => int i; i < scale.size(); i++) {

        Std.mtof(60 + scale[i]) + 7 => tri.freq;
        tri.freq() - Math.random2f(10, 50) => f.freq;

        Math.random2f(-1, 1) => p.pan;
        200 :: ms => now;

    }

}