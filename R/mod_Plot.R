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
  tagList(
 
  )
}
    
#' Plot Server Functions
#'
#' @noRd 
mod_Plot_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_Plot_ui("Plot_1")
    
## To be copied in the server
# mod_Plot_server("Plot_1")
