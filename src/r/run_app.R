options(java.parameters = "-Xmx8g")
options(scipen = 999)

# make sure the inputs from the .bat can be read
args <- commandArgs(trailingOnly = TRUE)

setwd(abulily::get_directory())
setwd('..')
setwd('..')
wd <- getwd()

app.title <- 'abulily'

# load R-scripts ----------------------------------------------------------

source('./src/r/app/support/lib.r')
source('./src/r/app/support/style.r')
source('./src/r/app/support/func.r')


side.logo      <- list(size='50%',  opacity=.10)
frontpage.logo <- list(size='300px',opacity=.3)

dynamic.pages <- 1:10
dynamic.sidebar.pages <- c('a','b','c','d','e','f')

invisible(sapply(list.files(path = './src/r/app/pages/',pattern="*.R",full.names = T),source))


# IP configuration --------------------------------------------------------
ipPort=sample(c(1000:65535))[1]

ip <- gsub(".*? ([[:digit:]])", "\\1", system("ipconfig", intern=T)[grep("IPv4", system("ipconfig", intern = T))])
ip <- '127.0.0.1' #local host


# run app -----------------------------------------------------------------
runApp(appDir = './src/r/app/',port = ipPort,launch.browser = shell(paste0('start msedge --app=http://',ip,':',ipPort)))