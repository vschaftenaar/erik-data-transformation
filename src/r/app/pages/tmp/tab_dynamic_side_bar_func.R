pltDynamicSidebarPage <- function(input,x){
  
  n <- input[[paste0('sld.',x)]]
  
  col <- if(input[[paste0('blue.',x)]])palette$fg.0 else palette$green
  
  par(bg=palette$bg,fg=palette$fg.0)
  
  hist(
    rnorm(n*1000)
    ,100
    ,col=col
    ,border=F
    ,main=paste0(input[[paste0('pck.',x)]],' - ',input[[paste0('dt.',x)]])
  )
  
}