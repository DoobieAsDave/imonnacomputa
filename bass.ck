.5 => dac.gain;

SinOsc sin => Gain g => dac;
SqrOsc sqr => g;

[
    Std.mtof(48),
    Std.mtof(41),
    Std.mtof(48),
    Std.mtof(41),
    Std.mtof(50),
    Std.mtof(40),
    Std.mtof(55),
    Std.mtof(36)
] @=> float scale[];

.5 => g.gain;
.2 => sqr.gain;

while(true) {   
        
    for (0 => int i; i < scale.size(); i++) {

        scale[i] => sin.freq;   
        
        if (i < scale.size() / 2) {
            Std.mtof(48) => sqr.freq;
        }
        else {
            Std.mtof(46) => sqr.freq;
        }

        400 :: ms => now;

    }

}