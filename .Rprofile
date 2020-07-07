#   Colorful R output from the console
library(colorout)

#   read terminal width and pipe it to options(width = .)
adjust_cons_width <- function (out = TRUE) {

    console_width <- system("tput cols", TRUE)
    options(width = console_width)

    if(out == TRUE){
        print(console_width)
    }

}
adjust_cons_width(FALSE)

options(prompt = "R>> ")

#   UNIX commands
cd <- setwd
pwd <- getwd
h <- utils::head
man <- utils::help

.First <- function(){
 cat("Start R", date(), "\n")
}

.Last <- function(){
 cat("Close R", date(), "\n", "Don't go to Python or Julia!\n")
}

#   Change default behaviour of q() to automatically not save workspace
q <- function(save = "no", ...){
    quit(save = save, ...)
}

set.seed(1234)
message("
 ____    _                                          
|  _ \\  | | __ _ _ __   __ _ _   _  __ _  __ _  ___ 
| |_) | | |/ _` | '_ \\ / _` | | | |/ _` |/ _` |/ _ \
|  _ <  | | (_| | | | | (_| | |_| | (_| | (_| |  __/
|_| \\_\\ |_|\\__,_|_| |_|\\__, |\\__,_|\\__,_|\\__, |\\___|
                       |___/             |___/      
")
