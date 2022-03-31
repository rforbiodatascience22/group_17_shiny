#' plot_codons UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_plot_codons_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' plot_codons Server Functions
#'
#' @noRd 
mod_plot_codons_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_plot_codons_ui("plot_codons_1")
    
## To be copied in the server
# mod_plot_codons_server("plot_codons_1")
