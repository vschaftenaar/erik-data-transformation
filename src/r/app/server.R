server <- function(input, output, session) {
  session$onSessionEnded(function(){stopApp()})

  
  

# tab-00 -------------------------------------------------------
  output$tab_010 <- renderUI(tab_010())

  
  
# tab-021 ------------------------------------------------------
  output$tab_021 <- renderUI(tab_021())

# tab-022 ------------------------------------------------------
  output$tab_022 <- renderUI(tab_022())
  
  
  
# tab-dynamic --------------------------------------------------
  lapply(paste0('page ',dynamic.pages), function(x){output[[paste0('dynamic.',x)]] <- renderUI(dynamic(x))})
  
  

# tab-sidebar -------------------------------------------------------------
  output$sidebar <- renderUI(sidebar(input))


# tab-dynamic-sidebar -----------------------------------------------------
  lapply(paste0('sidebar page ',dynamic.sidebar.pages), function(x){output[[paste0('dynamic.sidebar.',x)]] <- renderUI(dynamic.sidebar(input,x))})
  
  
# Style -------------------------------------------------------------------
  output$style <- renderUI(getStyle())
  
}