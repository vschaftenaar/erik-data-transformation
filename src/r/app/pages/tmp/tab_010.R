tab_010 <- function(){
  tagList <- list(
    column(
      2
      ,style=paste0('background-color:',palette$bg,';height:calc(100vh - 70px);margin-top:70px;')
    )
    
    ,column(
      10
      ,br(),br()
      ,style=paste0('background-color:',palette$bg,';height:calc(100vh - 70px);margin-top:70px;overflow-y:scroll;padding-right:15vw;')
      ,h2('shiny appplication - template')
      ,p(style="text-align: justify;",HTML(paste0(
        'This is a Shiny app template created by Abulily. Have fun...
        ')))
      ,br(),br(),br()
      ,hr()
      ,br()
      ,HTML('<h3>Contact</h3>For any technical support, please contact:
        <ul>
          <li>developer: <a href = "mailto: v.schaftenaar@gmail.com">Vincent Schaftenaar</a></li>
        </ul>'
      )
      ,div(id='logo_black', img(src='logo_black.png',height= frontpage.logo$size,width='auto',align='left'),style=paste0('margin-top:-25px;margin-left:350px;opacity:',frontpage.logo$opacity,';'))
      # ,div(id='logo_black', img(src='logo_black.png',height= frontpage.logo$size,width='auto',align='right'),style=paste0('margin-top:-25px;margin-right:50px;opacity:',frontpage.logo$opacity,';'))
      # ,div(id='log0_black', img(src='logo_black.png',height= '350px',width='auto'),style='margin-top:-150px;margin-left:350px;opacity: .2;')
    ))
  
  
  return(tagList)
}
