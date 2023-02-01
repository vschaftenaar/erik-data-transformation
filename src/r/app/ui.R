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
        # ,column(
        #   width = 12
        #   ,uiOutput('out.dt'))
      )

)
