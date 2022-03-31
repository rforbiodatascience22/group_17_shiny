#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @importFrom magrittr %>%
#' @noRd
app_server <- function(input, output, session) {
  # wait till submit button is pressed
  #observeEvent(input$button, {
  # get sequence
  #seq <- input$seq_for_plot
  # plot
  #output$plot <- renderPlot({
  #  centralDogma::plot_abundance(sequence = seq)
  #})
  #})
  mod_seq_for_plot_server("seq_for_plot_1")
  mod_Plot_server("Plot_1")
}

# use the "centralDogma" packages from https://github.com/rforbiodatascience22/centralDogma
