SndBuf hihat => dac;

me.dir() + "/audio/hihat_02.wav" => hihat.read;

.2 => hihat.gain;

while(true) {

    for(0 => int i; i < 8; i++) {

        if (i != 7) {
            
            0 => hihat.pos;
            200 :: ms => now;
                       
        }
        else {
            
            0 => hihat.pos;
            100 :: ms => now;
            0 => hihat.pos;
            75 :: ms => now;
            0 => hihat.pos;
            25 :: ms => now;

        }


    }

}