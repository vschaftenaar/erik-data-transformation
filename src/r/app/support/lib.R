options(scipen = 999)


message('loading packages...')

packages <- c(
  "shiny"
  ,"shinythemes"
  ,"shinyWidgets"
  ,"data.table"
  #,"readxl"
  ,"xlsx"
  # ,'openxlsx2'
  )


pkgTest <- function(x)
{
  if (!require(x,character.only = TRUE))
  {
    install.packages(x,dep=TRUE)
    if(!require(x,character.only = TRUE)) stop("Package not found")
  }
}

nPack=length(packages)

for(i in 1:nPack){
  chk=suppressMessages(pkgTest(packages[i]))
}


rm('packages')
rm('pkgTest')
rm('nPack')
rm('i')
rm('chk')


suppressMessages(if(!require(abulily)){
  install_personal_github <- function(user,package,path,delete_tar=T){
    
    lnk <- paste0('https://github.com/',user,'/',package,'/archive/main.tar.gz')
    download.file(url = lnk,destfile = paste0(package,'.tar.gz'))
    
    current_path <- getwd()
    install.packages(paste0(current_path,'/',package,'.tar.gz'), repos = NULL, type = 'source')
    
    if(delete_tar)file.remove(paste0(package,'.tar.gz'))
  }
  
  install_personal_github(
    user = 'vschaftenaar',
    package = 'abulily',
    delete_tar = T)
  
  
  }else{
    'abulily loaded'
  }
)


