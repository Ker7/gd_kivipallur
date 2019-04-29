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
        // kill quote
        visible = false
        instance_destroy(jurtoQuoterText)
    }
    else {
        quoteCooldown -= 1
    }
}
