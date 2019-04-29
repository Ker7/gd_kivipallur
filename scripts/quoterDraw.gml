if (!sys.waveInProgress ){

    //TODO: hardcode in next line 
   if ((sys.INTER_WAVE_PAUSE - sys.waveCooldown) > 150) { // 150 is approx time for rock to hit ground..shitty code

        draw_sprite(sprJurtoTalking, 16 * sys.ct, 0,0) // 16fps
        
        var text;
        if (sys.difficulty == 0) {
            text = QUOTES[0]
        } else {
            text = QUOTES[ max(1,sys.difficulty % 10)]
        }
        
        draw_set_font(old_press)
        draw_text(350,525,text)
        draw_set_font(font0) // revert to default

    }
}
