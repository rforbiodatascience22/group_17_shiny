#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # Your application UI logic
    fluidPage(
      h1("group17shiny"),
      tabsetPanel(
        tabPanel(title = "Creating amino acid sequences from nucleotide base",
                 mod_seq_for_plot_ui("seq_for_plot_1")),
        tabPanel(title = "Frequency of amino acid from mRNA sequences",
                 mod_Plot_ui("Plot_1"))
      )

    )
  )
}

#'
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd

golem_add_external_resources <- function() {
  add_resource_path(
    "www",
    app_sys("app/www")
  )

  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys("app/www"),
      app_title = "group17shiny"
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}
