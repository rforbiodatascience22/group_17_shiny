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
        tabPanel(title = "Seqences for plotting",
                 mod_seq_for_plot_ui("seq_for_plot_1")),
        tabPanel(title = "Plotting of amino acid",
                 mod_Plot_ui("Plot_1"))
      )
    )
  )
}

#' titlePanel("Dogma Molecular Biology"),
#' sidebarLayout(
#' --------------------------------------------------------------------------
#' Side bar Panel
#' --------------------------------------------------------------------------
#' sidebarPanel(
#' tags$form(
#'    textInput(
#'      inputId = "seq_for_plot", label = "Input Sequence",
#'      placeholder = "ATGCCTTGTC"), actionButton("button", "Submit")
#' )),
#' --------------------------------------------------------------------------
#' Main Panel
#' --------------------------------------------------------------------------
#' mainPanel(
#' subsetting main panel into tabs
#' tabsetPanel(
#' type = "tabs",
#' plots
#' tabPanel("Plot", plotOutput("plot"))


#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
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
