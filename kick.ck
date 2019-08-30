SndBuf kick => dac;

me.dir() + "/audio/kick_04.wav" => kick.read;


while(true) {

    for(0 => int i; i < 4; i++) {
                
        if (i != 3) {
            .7 => kick.gain;

            400 :: ms => now;
            0 => kick.pos;
        }
        else {
            400 :: ms => now;
            0 => kick.pos;

            1 => kick.gain;

            200 :: ms => now;
            0 => kick.pos;

            .5 => kick.gain;

            200 :: ms => now;
            0 => kick.pos;
        }

    }

}