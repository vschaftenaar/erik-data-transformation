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
      openxlsx2::write_xlsx(file = file.name,x = dt.to.export,na.string=F,asTable = T)
      wb <- openxlsx2::wb_load(file.name)
      openxlsx2::wb_open(wb)
    
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