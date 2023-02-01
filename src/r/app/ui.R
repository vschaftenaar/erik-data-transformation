ui <- navbarPage(
  title = div(
    div(id='logo-id', img(src='logo_white.png',align="right",height= '65px',width='auto'))
  )
  
  ,windowTitle = app.title
  ,position = 'fixed-top'
  ,theme = shinytheme('paper')
  
    # chapter 1
      ,tabPanel(
        'tab-01'
        ,uiOutput('style') # Styling, need to be somewhere in the UI, nothing to do with CHAPTER 1
        ,uiOutput('tab_010'))
      
    # chapter 2
    ,navbarMenu(
        'tab-02'
        ,tabPanel('tab-021', uiOutput('tab_021'))
        ,tabPanel('tab-022', uiOutput('tab_022'))
        )
  
    # chapter dynamic
    ,getMenu('dynamic', paste0('page ',dynamic.pages))
      
  
    # chapter side bar
    ,tabPanel(
      'sidebar',
      uiOutput('sidebar')
    )
  
    # chapter dynamic side bar
    ,getMenu('dynamic.sidebar', paste0('sidebar page ',dynamic.sidebar.pages))
)
