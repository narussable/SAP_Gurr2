library(shinyalert)
library(bs4Dash)
library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    var <- reactiveValues( init = FALSE )
    
    observeEvent(input$start,{ 
        
        qo <<- input$qo; pdisp <<- input$pdisp; psd <<- input$psd; pwh <<- input$pwh
        gammag <<- input$gammag; dens <<- input$density; ip <<- input$ip
        densityo <<- input$densityo; phitr <<- input$phitr; phitp <<- input$phitp
        profemp <<- input$profemp; twh <<- input$twh; tfondo <<- input$tfondo
        pvalvula <<- input$pvalvula; ttaller <<- input$ttaller; rgan <<- input$rgan
        rgat <<- input$rgat; pws <<- input$pws
        if(!is.null(
                c(qo,pdisp,psd,pwh,gammag,dens,ip,densityo,phitr,phitp,profemp,twh,tfondo,
                 pvalvula,ttaller,rgan, rgat, pws)
        ))
            var$init <- TRUE 
        
        print(var$init)
    })
    
    

})
