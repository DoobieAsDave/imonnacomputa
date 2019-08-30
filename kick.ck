SndBuf kick => dac;

me.dir() + "/audio/kick_04.wav" => kick.read;
.8 => kick.gain;

while(true) {

    for(0 => int i; i < 4; i++) {
        
        if (i != 3) {
            400 :: ms => now;
            0 => kick.pos;
        }
        else {
            200 :: ms => now;
            0 => kick.pos;

            1 => kick.gain;

            200 :: ms => now;
            0 => kick.pos;
        }

    }

}