#' Plot UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_Plot_ui <- function(id){
  ns <- NS(id)
  tagList(sidebarLayout(
    sidebarPanel(
      textInput(ns("peptide_sequence"),
                "Input peptide sequence",
                value = "Enter peptide sequence"),
      textOutput(ns("value"))
    ),
    mainPanel(
      plotOutput(
        outputId = ns("abundance")
      )
      #plotOutput("plot")
    )
  )

  )
}


#' Plot Server Functions
#'
#' @noRd
mod_Plot_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    output$abundance <- renderPlot({
      if(input$peptide_sequence %in% c("",
                                       "Enter peptide sequence")){
        NULL
      } else{
        input$peptide_sequence %>%
          CentralDogma::visualize_aa_counts() +
          ggplot2::theme(legend.position = "none")
      }
    })
  })
}

## To be copied in the UI
# mod_Plot_ui("Plot_1")

## To be copied in the server
# mod_Plot_server("Plot_1")
