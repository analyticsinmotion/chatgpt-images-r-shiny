#' input_apikey UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_input_apikey_ui <- function(id) {
  ns <- NS(id)
  tagList(

    ## START - MY CODE
    passwordInput(ns("apikey"), label = "Enter your OpenAI API Key"),
    actionButton(ns("buttonSaveApiKey"), label = "Save", icon = icon("upload")),
    br(),br(),
    textOutput(ns("messageApiKeySaved"))
    ## END - MY CODE

  )
}

#' input_apikey Server Functions
#'
#' @noRd
mod_input_apikey_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    ## START - MY CODE
    r <- reactive(
      set_apikey(input$apikey)
    ) |>
      bindEvent(input$buttonSaveApiKey)

    output$messageApiKeySaved <- renderText({
      r()
      "Your API Key has been saved."
    }) |>
      bindEvent(input$buttonSaveApiKey)
    ## END - MY CODE


  })
}

## To be copied in the UI
# mod_input_apikey_ui("input_apikey_1")

## To be copied in the server
# mod_input_apikey_server("input_apikey_1")
