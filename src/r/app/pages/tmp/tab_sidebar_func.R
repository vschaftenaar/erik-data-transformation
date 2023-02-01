pltDynamicPage <- function(input){
  
  n <- input$sld
  
  col <- if(input$blue)palette$fg.0 else palette$green
  
  par(bg=palette$bg,fg=palette$fg.0)
  
  hist(
    rnorm(n*1000)
    ,100
    ,col=col
    ,border=F
    ,main=paste0(input$pck,' - ',input$dt)
    )
  
}