#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @import group17
#' @noRd
app_server <- function(input, output, session) {
  # wait till submit button is pressed
  observeEvent(input$button, {
  # get sequence
  seq <- input$seq_for_plot
  # plot
  output$plot <- renderPlot({
    group17::plot_base_occurrence(sequence = seq)
  })
  })
}
