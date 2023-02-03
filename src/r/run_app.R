options(java.parameters = "-Xmx8g")
options(scipen = 999)

setwd(abulily::get_directory())
setwd('..')
setwd('..')
wd <- getwd()

app.title <- 'erik-data-transformation'

# load R-scripts ----------------------------------------------------------

source('./src/r/app/support/lib.r')
source('./src/r/app/support/style.r')
source('./src/r/app/support/func.r')

invisible(sapply(list.files(path = './src/r/app/pages/',pattern="*.R",full.names = T),source))

# IP configuration --------------------------------------------------------
ipPort=sample(c(1000:65535))[1]

ip <- '127.0.0.1' #local host

# run app -----------------------------------------------------------------
runApp(appDir = './src/r/app/',port = ipPort,launch.browser = shell(paste0('start msedge --app=http://',ip,':',ipPort)))