SndBuf hihat => dac;
0 => int mode;


me.dir() + "/audio/hihat_02.wav" => hihat.read;

.2 => hihat.gain;

while (true) {
    
    for(0 => int i; i < 16; i++) {

        if (i != 15) {

            .2 => hihat.gain;

            if (i != 7 && i != 3) {
                    
                0 => hihat.pos;
                200 :: ms => now;

            }
            else {

                .1 => hihat.gain;

                0 => hihat.pos;
                100 :: ms => now;
                0 => hihat.pos;
                100 :: ms => now;

            }                            

        }
        else {                  

            .1 => hihat.gain; 
            
            0 => hihat.pos;
            75 :: ms => now;
            0 => hihat.pos;
            75 :: ms => now;
            0 => hihat.pos;
            50 :: ms => now;                 

        }

    }   

}