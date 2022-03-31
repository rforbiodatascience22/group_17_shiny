#' create_peptide UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_create_peptide_ui <- function(id){
  ns <- NS(id)
  tagList(
     fluidRow(
      column(8, uiOutput(ns("DNA"))),

      column(4, numericInput(
        inputId = ns("dna_length"),
        value = 6000,
        min = 3,
        max = 100000,
        step = 3,
        label = "Random DNA length"
      )
      , actionButton(
        inputId = ns("generate_dna"),
        label = "Generate random DNA", style = "margin-top: 18px;"
      ))
    ),
    verbatimTextOutput(outputId = ns("peptide")) %>%
      tagAppendAttributes(style = "white-space: pre-wrap;")

  )
}

#' create_peptide Server Functions
#'
#' @noRd
mod_create_peptide_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    dna <- reactiveVal()

    output$DNA <- renderUI({
      textAreaInput(
        inputId = ns("DNA"),
        label = "DNA sequence",
        placeholder = "Insert DNA sequence",
        value = dna(),
        height = 100,
        width = 600
      )
    })

    observeEvent(input$generate_dna, {
      dna(
        CentralDogma::generate_dna(input$dna_length)
      )
    })

    output$peptide <- renderText({
      # Ensure input is not NULL and is longer than 2 characters
      if(is.null(input$DNA)){
        NULL
      } else if(nchar(input$DNA) < 3){
        NULL
      } else{
        input$DNA %>%
          toupper() %>%
          CentralDogma::mRNA() %>%
          CentralDogma::make_codons() %>%
          CentralDogma::translation()
      }
    })

  })
}

## To be copied in the UI
# mod_create_peptide_ui("create_peptide_1")

## To be copied in the server
# mod_create_peptide_server("create_peptide_1")
