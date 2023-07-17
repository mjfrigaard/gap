#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @importFrom shiny fluidPage h1 sidebarLayout sidebarPanel h6 em a
#' @importFrom shiny mainPanel fluidRow p img
#'
#'
#' @export
app_ui <- function(request) {
  shiny::tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # Your application UI logic
    shiny::fluidPage(
      shiny::sidebarLayout(
        shiny::sidebarPanel(
          mod_var_ui("vars"),
          shiny::h6(
            shiny::img(src = "www/shiny.png", width = '15%'),
            shiny::em(
              "The data for this application comes from the ",
              shiny::a("Building web applications with Shiny",
                href = "https://rstudio-education.github.io/shiny-course/"
              ),
              "tutorial"
            )
          )
        ),
        shiny::mainPanel(
          mod_plot_ui("plot"),
          shiny::fluidRow(
            shiny::p(
              shiny::em("Brought to you by: "),
              # add golem hex (in www/images/)
              shiny::img(src = "www/images/golem-hex.png", width = '5%')
            )
          )
        )
      )
    )
  )
}

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
      app_title = "gap"
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}
