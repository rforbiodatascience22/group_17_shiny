#' seq_for_plot UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_seq_for_plot_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' seq_for_plot Server Functions
#'
#' @noRd 
mod_seq_for_plot_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_seq_for_plot_ui("seq_for_plot_1")
    
## To be copied in the server
# mod_seq_for_plot_server("seq_for_plot_1")
