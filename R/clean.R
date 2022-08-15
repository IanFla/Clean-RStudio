cc <- parse(text="
    default <- c('.GlobalEnv', 'tools:rstudio',
                 'package:stats', 'package:graphics',
                 'package:grDevices', 'package:utils',
                 'package:datasets', 'package:methods',
                 'Autoloads', 'package:base')
    for (p in search()) {
        if (!(p %in% default)) {
            detach(pos=which(p == search()))
        }
    } # clean the packages
    graphics.off() # close all graphics
    rm(list=ls()) # clean the environment
    cat('\f') # clean the console")


if(1 == 0){
    eval(cc)
}
