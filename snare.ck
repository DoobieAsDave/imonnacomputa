SndBuf snare => dac;

me.dir() + "/audio/snare_01.wav" => snare.read;
.8 => snare.gain;
snare.samples() => snare.pos;

while(true) {

    400 :: ms => now;

    0 => snare.pos;

    400 :: ms => now;

}