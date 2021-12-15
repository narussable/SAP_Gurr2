library(bs4Dash)
library(shiny)

initVars <- function() {
    fluidRow(
        column( 6,
            shiny::numericInput(
                inputId = 'qo',
                label = 'q0',
                value = NULL,
                step = 0.01
            ) 
        ),
        column( 6,
            shiny::numericInput(
                inputId = 'pdisp',
                label = '$$P_{disp}$$',
                value = NULL,
                step = 0.01
            )
        )
    )
    fluidRow(
        column( 6,
                shiny::numericInput(
                    inputId = 'pp',
                    label = '$$P_{disp}$$',
                    value = NULL,
                    step = 0.01
                )  
        )
    )
}
