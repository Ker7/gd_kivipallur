
if sys.difficulty != lastDifficulty {
    show_debug_message("New Wave ");
    lastDifficulty = sys.difficulty
    eventRenderCountdown = 360;
    eventText = "WAVE: " + string(sys.difficulty)

}

