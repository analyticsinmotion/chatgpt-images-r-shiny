#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  # Your application server logic

  ## START - MY CODE
  mod_input_apikey_server("input_apikey_1")
  mod_create_image_server("create_image_1")
  mod_show_gallery_server("show_gallery_1")
  mod_show_instructions_server("show_instructions_1")
  ## END - MY CODE

}
