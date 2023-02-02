#' show_gallery UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_show_gallery_ui <- function(id) {
  ns <- NS(id)
  tagList(

    ## START - MY CODE
    uiOutput(ns("module_body"))
    ## END - MY CODE
  )
}

#' show_gallery Server Functions
#'
#' @noRd
mod_show_gallery_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    ## START - MY CODE
    output$module_body <- renderUI({
      number_images <- length(get_images())
      image_splits <- split(get_images(), cut(seq_along(get_images()), 4, labels = FALSE))
      fluidRow(
        column(width = 2, image_splits[1]),
        column(width = 2, image_splits[2]),
        column(width = 2, image_splits[3]),
        column(width = 2, image_splits[4])
        )
      }
    )
    ## END - MY CODE

  })
}

## To be copied in the UI
# mod_show_gallery_ui("show_gallery_1")

## To be copied in the server
# mod_show_gallery_server("show_gallery_1")
