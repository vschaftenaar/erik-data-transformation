dynamic.sidebar <- function(input,x){
  tagList <- list(
    column(
      width = 2
      ,div(id='logo_black', img(src='logo_black.png',height= 'auto',width=side.logo$size,align='left'),style=paste0('opacity:',side.logo$opacity,';margin-top:5px;margin-left:25px'))
      ,br(),br(),br(),br(),br()
      ,style=paste0('background-color:',palette$bg,';height:calc(100vh - 70px);margin-top:70px;overflow-y:auto;')
      
      #sidebar
      ,div(
        style='width:90%;font-size:90%'
        ,panel(
          sliderInput(paste0('sld.',x),'slider',1,100,25,1,ticks = F,width = '100%')
          ,pickerInput(paste0('pck.',x),'picker',paste0('pick-0',1:5),width = '100%')
          ,div(materialSwitch(paste0('blue.',x),'switch',value = T,inline = F,width = '100%',right = F),style='font-size:95%')
          ,hr()
          ,numericInput(paste0('num.',x),'numerical',2.5e6,min = 0,max = 5e6,step=100e3, width = '100%')
          ,autonumericInput(paste0('autoNum.',x),'auto numerical',value = 2.5e6,width='100%',
                            decimalCharacter = '.',digitGroupSeparator = ',',align = 'left',decimalPlaces = 0)
          ,dateInput(paste0('dt.',x),'date','2020-10-26')
        )
      )
    )
  )
  
  #main page  
  
  tagList$mainpage <- column(
    width = 10
    ,style=paste0('background-color:',palette$bg,';height:calc(100vh - 70px);overflow-y:scroll;margin-top:70px;padding-right:15vw;')
    # ,style=paste0('background-color:',palette$bg,';height:height:95vh;overflow-y:scroll;margin-top:5vh;padding-right:15vw;')
    ,br(),br()
    ,h2('page with sidebar - ',x)
    ,getLorem(short = T)
    ,renderPlot(height = 700,pltDynamicSidebarPage(input,x))
    ,br()
    ,getLorem()
    ,br()
    ,getLorem()
  )
  
  return(tagList)
}
  