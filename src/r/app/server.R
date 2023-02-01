server <- function(input, output, session) {
  session$onSessionEnded(function(){stopApp()})

  db <- reactiveValues()
  
  observe({
    if(!is.null(input$data.upload)){
      db$data <- as.data.table(fread(file=input$data.upload$datapath))
    }else{
      db$data <- data.table('select data-file first'=0)
    }
    tmp.chk <<- db$data}
    )
  
# data-transformation tab -------------------------------------------------
  output$transformation <- renderUI(transformation(input,db$data))

  observeEvent(input$transform.db,{
    message('run')
    output$out.dt  <- DT::renderDataTable(out.dt(db$data,input))
    
  })
  
# Style -------------------------------------------------------------------
  output$style <- renderUI(getStyle())
  
}