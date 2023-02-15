server <- function(input, output, session) {
  session$onSessionEnded(function(){stopApp()})

  db <- reactiveValues()
  
  observe({
    if(!is.null(input$data.upload)){
      n.col <- ncol(fread(file=input$data.upload$datapath))
      db$data <- as.data.table(fread(file=input$data.upload$datapath,colClasses = rep('character',n.col)))
    }else{
      db$data <- data.table('select data-file first'=0)
    }
    tmp.chk <<- db$data}
    )
  
# data-transformation tab -------------------------------------------------
  output$transformation <- renderUI(transformation(input,db$data))

  observe({
    output$org.dt  <- DT::renderDataTable(dt.original(db$data))
  })
  
  observeEvent(input$transform.db,{
    output$out.dt  <- DT::renderDataTable(out.dt(db$data,input))
  })
  
  observeEvent(input$export.excel,{
    
    if(exists('dt.to.export')){
      # file.name <- './out/out.xlsx'
      file.name <- '../../../out/out.xlsx'
      
      withProgress(value = .8,message = 'exporting data to excel',expr={
        xlsx::write.xlsx(x = dt.to.export,file = file.name,sheetName = 'data',showNA = F,row.names = F)})
      
        openxlsx2::xl_open(file.name)
    }else{
      show_alert(
        title = "Error !!",
        text  = "no data transposed",
        type  = "error"
      )
    }
  })
  
  
# Style -------------------------------------------------------------------
  output$style <- renderUI(getStyle())
  
}