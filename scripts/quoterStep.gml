if (quoteScheduled){
    if stepsTilNextQuote < 0{
        visible = true
        quoteScheduled = false
        quoteCooldown = 100
    } else {
        stepsTilNextQuote -= 1
    }
}

if (visible){
    if quoteCooldown < 0 {
        visible = false
    }
    else {
        quoteCooldown -= 1
    }
}
