shadow <- T
fontFamily <-  'calibriLight'
fontFamily <-  'calibri'
fontFamily <-  'bahn'
# fontFamily <-  'mono'

windowsFonts(arial = "Arial Unicode MS",
             arialBlack='Arial Black',
             lucidia='Lucida Console',
             arialNarrow='Arial Narrow',
             mono = "Courier New",
             calibri = "Calibri",
             calibriLight = "Calibri light",
             gothic = "MS Gothic",
             corbelLight='Corbel Light',
             bahn='Bahnschrift Light'
)


palette <- data.table(
  bg            = '#ffffff',
  panel         = '#006192',
  txt           = '#000000',
  panel.txt     = '#ffffff',
  fg.0          = '#006192',
  fg.0.fade     = '#00619215',
  fg.1          = '#8CC6D0',
  fg.2          = '#DFEFF2',
  fg.3          = '#FFF2CD',
  fg.4          = '#D35F80',
  dark          = '#00496D',
  red           = '#D35F80',
  green         = '#8CC6D0',
  dropdown      = '#f6f6f6',
  side.panel.bg = '#ffffff',
  caret         = '#ffffff',
  dt.head       = '#ffffff',
  h1            = '#000000',
  h2            = '#000000',
  h3            = '#000000'
)

palette <- data.table(
  bg            = '#ffffff',
  panel         = '#4a9ac5',
  txt           = '#000000',
  panel.txt     = '#ffffff',
  fg.0          = '#4a9ac5',
  fg.0.fade     = '#4a9ac515',
  fg.1          = '#8CC6D0',
  fg.2          = '#DFEFF2',
  fg.3          = '#FFF2CD',
  fg.4          = '#D35F80',
  dark          = '#3886b0',
  red           = '#D35F80',
  green         = '#8CC6D0',
  dropdown      = '#f6f6f6',
  side.panel.bg = '#ffffff',
  caret         = '#ffffff',
  dt.head       = '#ffffff',
  h1            = '#000000',
  h2            = '#000000',
  h3            = '#000000'
)


# palette <- data.table(
#   bg            = '#f9f9f9',
#   panel         = '#647886',
#   txt           = '#536470',
#   panel.txt     = '#f8f7f7',
#   fg.0          = '#647886',
#   fg.0.fade     = '#64788615',
#   fg.1          = '#8CC6D0',
#   fg.2          = '#DFEFF2',
#   fg.3          = '#FFF2CD',
#   fg.4          = '#D35F80',
#   dark          = '#536470',
#   red           = '#D35F80',
#   green         = '#8CC6D0',
#   dropdown      = '#f6f6f6',
#   side.panel.bg = '#efeded90',
#   caret         = '#f9f9f9',
#   dt.head.txt   = '#f9f9f9',
#   dt.head.bg    = '#647886',
#   h1            = '#536470',
#   h2            = '#536470',
#   h3            = '#536470'
# )

# palette <- data.table(
#   bg            = '#536470',
#   panel         = '#536470',
#   txt           = '#f8f7f7',
#   panel.txt     = '#f8f7f7',
#   fg.0          = '#647886',
#   fg.0.fade     = '#64788615',
#   fg.1          = '#8CC6D0',
#   fg.2          = '#DFEFF2',
#   fg.3          = '#FFF2CD',
#   fg.4          = '#D35F80',
#   dark          = '#647886',
#   red           = '#D35F80',
#   green         = '#8CC6D0',
#   dropdown      = '#536470',
#   side.panel.bg = '#647886',
#   caret         = '#f8f7f7',
#   dt.head       = '#f8f7f7',
#   h1            = '#f8f7f7',
#   h2            = '#f8f7f7',
#   h3            = '#f8f7f7'
# )


# par(family=windowsFont(fontFamily))
# barplot(rep(1,length(palette)),col=as.character(palette),names.arg = names(palette),main='palette')


getStyle <- function(){
  
  if(!shadow)col.shadow <- palette$bg else col.shadow <- palette$fg.0
  
  tagList <- list(
    #font
    tags$head(tags$style(paste0('div{font-family: ',windowsFonts(fontFamily),';font-size:105%;color:',palette$txt,'}')))
    ,tags$head(tags$style(paste0('ul{font-family: ',windowsFonts(fontFamily),';font-size:105%;color:',palette$txt,'}')))
    ,tags$head(tags$style(paste0('h1{font-family: ',windowsFonts(fontFamily),';color:',palette$h1,'}')))
    ,tags$head(tags$style(paste0('h2{font-family: ',windowsFonts(fontFamily),';color:',palette$h2,'}')))
    ,tags$head(tags$style(paste0('h3{font-family: ',windowsFonts(fontFamily),';color:',palette$h3,'}')))
    
    ,tags$head(tags$style(paste0('.form-control{color:',palette$txt,';}')))
    ,tags$head(tags$style(paste0('.caret{color:',palette$caret,';}')))
    
    # navbar  
    ,tags$style(HTML('.nav-tabs {border-bottom: 1px solid #dfdfdf}'))
    ,tags$style(HTML(paste0(
      '.nav-tabs>li>a:hover,
     .nav-tabs>li>a:focus:hover,
     .nav-tabs>li.active>a,
     .nav-tabs>li.active>a:focus,
     .nav-tabs>li.active>a:hover,
     .nav-tabs>li.active>a:active:hover,
     .nav-tabs>li.active>a:focus:hover
        {color:',palette$panel.txt,';box-shadow: inset 0 -1px 0 ',palette$panel,';}')))
    
    ,tags$style(HTML('.container-fluid {
       margin-right: auto;
       margin-left: auto;
       padding-left: 0px;
       padding-right: 0px;
     }'))
    
    ,tags$style(HTML(paste0(
      ".navbar-default .navbar-nav>.open>a,
       .navbar-default .navbar-nav>.open>a:hover,
       .navbar-default .navbar-nav>.open>a:focus {
         background-color: ",palette$dark,";
         color: ",palette$panel.txt,";
       }")))
    
    ,tags$style(HTML('body {padding-right:0px}'))
    
    
    # navbarpage
    ,tags$style(HTML('.navbar-nav>li>a {
            padding-top: 10px;
            padding-bottom: 10px;
            line-height: 50px;}'))
    
    ,tags$style(HTML(paste0(
      '.navbar-default .navbar-nav>li>a:hover, .navbar-default .navbar-nav>li>a:focus, .navbar-default .navbar-nav>li>a, .navbar-fixed-top
            {background-color:',palette$panel,';
             color:',palette$panel.txt,';
             height: 70px;
             font-size:105%;}')))
    
    ,tags$style(HTML(paste0('
          .navbar-default .navbar-nav>.active>a, .navbar-default .navbar-nav>.active>a:hover, .navbar-default .navbar-nav>.active>a:focus {
            color: ',palette$panel.txt,';
            background-color:',palette$dark,';
            height: 70px;}')))
    
    ,tags$style(HTML(paste0('.navbar-default .navbar-brand {background-color:',palette$panel,';color:',palette$bg,';height: 70px;}')))
    
    
    
    ,tags$style(HTML(paste0('.dropdown-menu>.active>a {background-color:',palette$panel,'10;color:',palette$panel.txt,';}')))
    
    
    #plots
    ,tags$style(type="text/css",".recalculating { opacity: 1.0; }")
    
    
    #slider
    ,tags$style(HTML(paste0(".irs--shiny .irs-single, .irs--shiny .irs-from, .irs--shiny .irs-to {color: ",palette$txt," ;background-color:",palette$bg,";}")))
    ,tags$style(HTML(paste0(".irs--shiny .irs-min, .irs--shiny .irs-max {color:",palette$bg,";background-color:",palette$bg,";}")))
    ,tags$style(HTML(paste0(".irs--shiny .irs-bar {border: ",palette$fg.0," 5px solid ;background:",palette$fg.0,"}")))
    
    
    #character input
    ,tags$style(HTML(paste0("input[type=text].form-control:focus {box-shadow: 0 12px 5px -5px ",col.shadow,"50}")))
    ,tags$style(HTML(paste0("input[type=text].form-control:hover {box-shadow: 0 12px 5px -5px ",col.shadow,"50}")))
    ,tags$style(HTML(paste0("input[type=text].form-control       {box-shadow: 0 8px 10px -10px ",col.shadow,"50}")))  
    ,tags$style(HTML(paste0("input[type=text].form-control:focus {border: solid 1px ",palette$fg.0,"10}")))
    ,tags$style(HTML(paste0("input[type=text].form-control:hover {border: solid 1px",palette$fg.0,"30}")))
    ,tags$style(HTML(paste0("input[type=text].form-control       {border: solid 1px  ",palette$fg.0,"10}")))
    ,tags$style(HTML(paste0("input[type=text].form-control       {padding-left: 10px}")))
    
    
    #numerical input
    ,tags$style(HTML(paste0("input[type=number].form-control:focus {box-shadow: 0 12px 5px -5px ",col.shadow,"50}")))
    ,tags$style(HTML(paste0("input[type=number].form-control:hover {box-shadow: 0 12px 5px -5px ",col.shadow,"50}")))
    ,tags$style(HTML(paste0("input[type=number].form-control       {box-shadow: 0 8px 10px -10px ",col.shadow,"50}")))
    ,tags$style(HTML(paste0("input[type=number].form-control:focus {border: solid 1px",palette$fg.0,"10}")))
    ,tags$style(HTML(paste0("input[type=number].form-control:hover {border: solid 1px",palette$fg.0,"30}")))
    ,tags$style(HTML(paste0("input[type=number].form-control       {border: solid 1px ",palette$fg.0,"10}")))
    ,tags$style(HTML(paste0("input[type=number].form-control       {padding-left: 10px}")))
    
    
    #pickerInput
    ,tags$style(HTML(paste0(".dropdown-menu>.active>a,.dropdown-menu>.active>a:hover,.dropdown-menu>.active>a:focus
                              {outline: 0;background-color:",palette$fg.0,";}")))
    
    ,tags$style(HTML(paste0(".btn{text-transform: none;border: solid 1px ",palette$fg.0,"10;box-shadow: 0 8px 10px -10px ",col.shadow,"50}")))
    ,tags$style(HTML(paste0(".btn:hover{text-transform: none;border: solid 1px ",palette$fg.0,"30;box-shadow: 0 12px 5px -5px ",col.shadow,"50;background-color:",palette$bg,"}")))
    ,tags$style(HTML(paste0(".btn:focus{text-transform: none;border: solid 1px ",palette$fg.0,"60;box-shadow: 0 12px 5px -5px ",col.shadow,"50;background-color:",palette$bg,"}")))
    ,tags$style(HTML(paste0(".open>.dropdown-toggle.btn{background-color:",palette$bg,"}")))
    ,tags$style(HTML(paste0(".open>.dropdown-toggle.btn:hover{background-color:",palette$bg,"}")))
    
    #data table
    ,tags$head(tags$style(paste0("table.dataTable tbody tr.even  {color:",palette$txt,";background-color:",palette$bg," !important;}")))
    ,tags$head(tags$style(paste0("table.dataTable tbody tr.odd   {color:",palette$txt,";background-color:",palette$fg.0.fade," !important;}")))
    ,tags$head(tags$style(paste0("table.dataTable thead tr       {color:",palette$bg,";background-color:",palette$fg.0," !important;}")))
    ,tags$head(tags$style(paste0("table.dataTable thead *        {color:",palette$dt.head.txt," !important;background-color:",palette$dt.head.bg,";}")))
    
    
    #panel
    ,tags$style(HTML(paste0(".panel-default>.panel-heading {color: ",palette$bg,";background-color:",palette$fg.0,";border-color: red;}")))
    ,tags$style(HTML(paste0(".panel-body {background-color: ",palette$side.panel.bg,";}")))
    
    #bttn
    ,tags$style(HTML(paste0("
      .btn-info, .btn-info:hover, .btn-info:active, .btn-info:active:hover,.btn-info.active:focus,.btn-info.active:hover  
              {color: ",palette$bg, ";background-color: ",palette$fg.0, ";border-color: transparent;}")))
    
    ,tags$style(HTML(paste0(".btn-default {
        color: ",palette$fg.0,";
        background-color: ",palette$bg,";
        border-color: ",palette$fg.0.fade,";
    }")))
    
    ,tags$style(HTML(paste0("
      .open>.dropdown-toggle.btn-info,.open>.dropdown-toggle.btn-info:active,.open>.dropdown-toggle.btn-info:focus,.open>.dropdown-toggle.btn-info:hover
           {color: ",palette$bg, ";background-color: ",palette$fg.0.fade, ";border-color: transparent;}")))
    
    #dropdown-menu
    ,tags$style(HTML(paste0("
      .dropdown-menu {background-color:",palette$dropdown,";font-size:105%;}")))
    
    #topbar
    ,tags$style(HTML('#logo-id {position: fixed;right:  25px;top: 3px;}'))
    # ,tags$style(HTML('#title-id{position: fixed;right: 25vw;top: 15px;}'))    
    
    #materialSwitch
    ,tags$style(HTML(paste0('.material-switch > input[type="checkbox"]:checked + label::before
    ,.material-switch > input[type="checkbox"]:checked + label::after {
      background-color: ',palette$fg.0,';}')))
    
    ,tags$style(HTML(paste0('.material-switch > input[type="checkbox"] + label::before
    ,.material-switch > input[type="checkbox"] + label::after {
      background-color: ',palette$fg.0,'35;}')))
   
  # progressbar
  ,tags$style(HTML(paste0(
      ".shiny-notification
                {position:  fixed;
                 top:       80px;
                 left:      25vw;
                 width:     50vw;
                 height:    100px;
                 background-color:",palette$dark,";
                 font-size: 20px;
                 opacity: 1;}")))
    
  ,tags$style(HTML(paste0(".shiny-progress, .progress-text, .progress-message, .progress-detail{
      color: white;
      opacity: 1;
    }")))
  
  ,tags$style(HTML(paste0(
      ".progress-bar
          {background-color:",palette$fg.0,";}")))
    
  ,tags$style(HTML(paste0(
      ".progress-bar:last-child:before 
          {background-color:",palette$fg.0,"50;}")))
    
  )
  
  
  return(tagList)
}
