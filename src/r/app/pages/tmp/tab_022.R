tab_022 <- function(){
  tagList <- list(
    column(
      2
      ,style=paste0('background-color:',palette$bg,';height:calc(100vh);')
      ,div(id='logo_black', img(src='logo_black.png',height= 'auto',width=side.logo$size,align='left'),style=paste0('opacity:',side.logo$opacity,';margin-top:75px;margin-left:25px'))
    )
    
    ,column(
      10
      ,br(),br()
      ,style=paste0('background-color:',palette$bg,';height:calc(100vh - 70px);margin-top:70px;overflow-y:scroll;padding-right:15vw;')
      ,h2('page 2.2')
      ,getLorem()
      ,br()
      ,getLorem()
      ,br()
      ,getLorem()
      )  
  )
  
  return(tagList)
}
