ui <- navbarPage(
  title = div(
    div(id='logo-id', img(src='logo_white.png',align="right",height= '65px',width='auto'))
  )

  ,windowTitle = app.title
  ,position = 'fixed-top'
  ,theme = shinytheme('paper')
  
    # chapter 1
      ,tabPanel(
        'transformation'
        ,uiOutput('style') # Styling, need to be somewhere in the UI, nothing to do with CHAPTER 1
        ,uiOutput('transformation')
        
        ,tags$head(tags$style(
          ".shiny-notification
                {position:  fixed;
                 top:       80px;
                 left:      calc(50vw - 225px);
                 width:     450px;
                 height:    100px;
                 font-size: 20px;}"))
        ,tags$head(tags$style(paste0(
        ".progress-bar
          {background-color:",palette$fg.0,";}")))
        
        ,tags$head(tags$style(paste0(
          ".progress-bar:last-child:before 
          {background-color:",palette$fg.0,"50;}")))
        
        
      )

  

)
