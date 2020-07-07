library(colorout)

adjust_cons_width <- function (out = TRUE) {

    console_width <- system("tput cols", TRUE)
    options(width = console_width)

    if(out == TRUE){
        print(console_width)
    }

}

adjust_cons_width(FALSE)

cd <- setwd
pwd <- getwd
h <- utils::head
man <- utils::help
