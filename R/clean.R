cc <- function() {
    tmp <- "default <- 11
    len <- length(search())
    if(len > default){
        for(i in 1:(len - default)){
            detach(pos=2)
        }
    } # clean the packages
    graphics.off() # close all graphics
    rm(list=ls()) # clean the environment
    cat('\f') # clean the console"
    parse(text = tmp)
}


if(1 == 0){
    eval(cc())
}
