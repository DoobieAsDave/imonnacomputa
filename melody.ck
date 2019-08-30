.5 => dac.gain;

[9, 0, 7, 5, 7, 3] @=> int scale[];

SinOsc sin => Pan2 p => NRev rev => dac;

.2 => sin.gain;
.1 => rev.mix;

while(true) {

    for(0 => int i; i < scale.size(); i++) {

        Std.mtof(60 + scale[i]) => sin.freq; 
        Math.random2f(-1, 1) => p.pan;
        200 :: ms => now;

    }

}