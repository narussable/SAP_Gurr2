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
                        ),
                        fluidRow(
                            column( 6,
                                    shiny::numericInput(
                                        inputId = 'ip',
                                        label = 'IP',
                                        value = NULL,
                                        step = 0.01
                                    ) 
                            ),
                            column( 6,
                                    shiny::numericInput(
                                        inputId = 'densityo',
                                        label = 'Den. o',
                                        value = NULL,
                                        step = 0.01
                                    )
                            )
                        ),
                        fluidRow(
                            column( 6,
                                    shiny::numericInput(
                                        inputId = 'phitr',
                                        label = 'Phi_{TR}',
                                        value = NULL,
                                        step = 0.01
                                    ) 
                            ),
                            column( 6,
                                    shiny::numericInput(
                                        inputId = 'phitp',
                                        label = 'Phi_{TP}',
                                        value = NULL,
                                        step = 0.01
                                    )
                            )
                        ),
                        fluidRow(
                            column( 6,
                                    shiny::numericInput(
                                        inputId = 'profemp',
                                        label = 'Prof. empacador',
                                        value = NULL,
                                        step = 0.01
                                    ) 
                            ),
                            column( 6,
                                    shiny::numericInput(
                                        inputId = 'twh',
                                        label = 'T_{wh}',
                                        value = NULL,
                                        step = 0.01
                                    )
                            )
                        ),
                        fluidRow(
                            column( 6,
                                    shiny::numericInput(
                                        inputId = 'tfondo',
                                        label = 'T_{but}',
                                        value = NULL,
                                        step = 0.01
                                    ) 
                            ),
                            column( 6,
                                    shiny::numericInput(
                                        inputId = 'pvalvula',
                                        label = 'AP_{val. op.}',
                                        value = NULL,
                                        step = 0.01
                                    )
                            )
                        ),
                        fluidRow(
                            column( 6,
                                    shiny::numericInput(
                                        inputId = 'ttaller',
                                        label = 'T_{taller}',
                                        value = NULL,
                                        step = 0.01
                                    ) 
                            ),
                            column( 6,
                                    shiny::numericInput(
                                        inputId = 'rgan',
                                        label = 'R_{GAN}',
                                        value = NULL,
                                        step = 0.01
                                    )
                            )
                        ),
                        fluidRow(
                            column( 6,
                                    shiny::numericInput(
                                        inputId = 'rgat',
                                        label = 'R_{GAT}',
                                        value = NULL,
                                        step = 0.01
                                    ) 
                            ),
                            column( 6,
                                    shiny::numericInput(
                                        inputId = 'pws',
                                        label = 'Pws',
                                        value = NULL,
                                        step = 0.01
                                    )
                            )
                        ),
                        shiny::actionButton(
                            inputId = 'start',
                            label = 'Calcular',
                            icon = shiny::icon('calculator')
                        )
                    )
                ),
                column( 6,
                    box(
                        title = 'Tablas de calculo',
                        width = 12,
                        DT::dataTableOutput('cal')
                    )
                )
            )
        )        
    )
))
