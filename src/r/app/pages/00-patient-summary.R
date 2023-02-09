transformation <- function(input,db){
  chk <- nrow(db)>1
  
  tagList <- list(
    column(
      width = 12
      ,br(),br()
      ,style=paste0('background-color:',palette$bg,';height:calc(100vh - 70px);margin-top:70px;overflow-y:auto;')
      
    # input
      ,panel(
           column(6,fileInput('data.upload','', multiple = FALSE, accept = c('csv','xlsx'), width = "100%"))
          ,column(3,renderUI(getColNames(db,'id',F)),style='margin-top:-5px;')
          ,column(3,renderUI(getColNames(db,'transpose',T)),style='margin-top:-5px;')
        )
      
    # present original table
      ,div(style='font-size:80%',DT::renderDataTable(dt.original(db)))
      
    # butto to initiate transformatio
      ,actionButton(
        'transform.db'
        ,p('trasform data',style=paste0("color:",palette$bg,";font-size:100%"))
        ,width = '150px'
        ,icon=icon('recycle')
        ,style=paste0("color:",palette$bg,"; background-color: ",palette$fg.0,";"))
    ,br(),br()
    # present transformed table
      ,div(style='font-size:80%',DT::dataTableOutput('out.dt'))
    )
  )
  
  return(tagList)
}

getColNames <- function(db,type,multiple){
  return(list(pickerInput(
    inputId = paste0('select.',type)
    ,label = div(type,style='font-size:75%;')
    ,choices = colnames(db)
    ,width = '100%',multiple = multiple)))
}

dt.original <- function(db){
  if(nrow(db)>1){
    dt <- DT::datatable(
      db,rownames = F,selection = 'none',extensions = 'Buttons',
      options = list(
        dom='Bftp'
        ,pageLength = 10
        ,buttons = c('copy','excel')
      ))}else{
      dt <- data.table()
    }
  return(dt)
}

out.dt <- function(db,input){
  select.id    <- input$select.id
  tranpose.var <- input$select.transpose
  other.var    <- names(db)[!(names(db) %in% c(select.id,tranpose.var))] 
  id <- as.vector(unlist(unique(db[,..select.id])))
  
  db.out <- data.table()
  
  if(length(id)>1){
    db$id.tmp <- db[,..select.id]
    db[,paste0(select.id):=NULL]
    db <- db[order(id.tmp)]

      for(i in id){
        tmp <- db[id.tmp==i]
        tmp.trans.tmp <- data.table(id.temp.to.be.renamed=i,tmp[1,..other.var])
        for(j in 1:nrow(tmp)){
          tmp.trans.tmp <- cbind(tmp.trans.tmp,tmp[j,..tranpose.var])
          }
        names(tmp.trans.tmp)[1] <- select.id
        db.out <- rbindlist(list(db.out,tmp.trans.tmp),use.names = T,fill = T)
      }
  }
  
  if(nrow(db.out)>1){
    dt <- DT::datatable(
      db.out,rownames = F,selection = 'none',extensions = 'Buttons',
      options = list(
        dom='Bftp'
        ,pageLength = 250000
        ,buttons = c('copy','excel')
        ,scrollX = TRUE
      ))}else{
        dt <- data.table()
      }
  
  return(dt)
}
