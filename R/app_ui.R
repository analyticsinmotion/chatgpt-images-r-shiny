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


    ## START - MY CODE
    shinydashboard::dashboardPage(
      shinydashboard::dashboardHeader(title = "ChatGPT Images"),

      shinydashboard::dashboardSidebar(
        shinydashboard::sidebarMenu(
          shinydashboard::menuItem("Instructions", tabName = "instructions", icon = icon("book-open-reader")),
          shinydashboard::menuItem("Create Image", tabName = "create-image", icon = icon("plus")),
          shinydashboard::menuItem("Image Gallery", tabName = "image-gallery", icon = icon("images")),
          shinydashboard::menuItem("Settings", tabName = "settings", icon = icon("gear"))
        )
      ),

      shinydashboard::dashboardBody(
        shinydashboard::tabItems(
          shinydashboard::tabItem(tabName = "settings", mod_input_apikey_ui("input_apikey_1")),
          shinydashboard::tabItem(tabName = "create-image", mod_create_image_ui("create_image_1")),
          shinydashboard::tabItem(tabName = "image-gallery", mod_show_gallery_ui("show_gallery_1")),
          shinydashboard::tabItem(tabName = "instructions", mod_show_instructions_ui("show_instructions_1"))
        )
      )

    )
    ## END - MY CODE

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
      app_title = "chatgptimages"
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}
