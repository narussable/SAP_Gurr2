library(shinyalert)
library(bs4Dash)
library(shiny)

source('initial_ui.R')

shinyUI(bs4DashPage(
    header = dashboardHeader(
        title = 'Programa Final',
        titleWidth = NULL
    ),
    sidebar = bs4DashSidebar(
        disable = TRUE
    ),
    body = bs4DashBody(
        bs4Card(
            title = 'Calculos iniciales',
            width = 12,
            fluidRow(
                column( 6,
                    box(
                        title = 'Variables de entrada',
                        width = 12,
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
                        ),
                        fluidRow(
                            column( 6,
                                    shiny::numericInput(
                                        inputId = 'psd',
                                        label = 'Psd',
                                        value = NULL,
                                        step = 0.01
                                    ) 
                            ),
                            column( 6,
                                    shiny::numericInput(
                                        inputId = 'pwh',
                                        label = 'P_{wh}',
                                        value = NULL,
                                        step = 0.01
                                    )
                            )
                        ),
                        fluidRow(
                            column( 6,
                                    shiny::numericInput(
                                        inputId = 'gammag',
                                        label = 'gamma_{ging}',
                                        value = NULL,
                                        step = 0.01
                                    ) 
                            ),
                            column( 6,
                                    shiny::numericInput(
                                        inputId = 'density',
                                        label = 'Den. de Fluid.',
                                        value = NULL,
                                        step = 0.01
                                    )
                            )
                        )
                    )
                ),
                column( 6,
                    box(
                        title = 'Tablas de calculo',
                        width = 12
                    )
                )
            )
        )        
    )
))
