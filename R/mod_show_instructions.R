#' show_instructions UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_show_instructions_ui <- function(id) {
  ns <- NS(id)
  tagList(

    ## START - MY CODE
    h2("Instructions"),
    hr(),
    h3("What is ChatGPT Images?"),
    p("ChatGPT Images is an application that utilizes OpenAI's ChatGPT model to dynamically create any type of image."),
    hr(),
    h3("How to use the app?"),
    p("Follow the steps below to generate new images and also review images you have created in the app previously."),
    hr(),
    h4("Step 1 - Enter your API Key"),
    p("The first step is to enter your OpenAI API Key in the ", em("Settings"), "tab."),
    p("You can create an OpenAI account and get the API Key by visiting ", a(href="https://chat.openai.com","https://chat.openai.com")),
    p("Once you have entered your API Key click the Save button."),
    hr(),
    h4("Step 2 - Create an Image"),
    p("After you have saved your API Key, click on the ", em("Create Image"), "tab."),
    p("In the text box, enter your description of the image that you would like produced."),
    p("Images can be generated in three sizes (in pixels):"),
    tags$ul(tags$li("256 x 256"),tags$li("512 x 512"),tags$li("1024 x 1024")),
    p("The images are created in a png format."),
    hr(),
    h4("Step 3 - View all images created"),
    p("All images created will be saved and available to view in the ", em("Image Gallery"), "tab."),
    p("Here images can be saved individually or download the complete collection.")
    ## END - MY CODE

  )
}

#' show_instructions Server Functions
#'
#' @noRd
mod_show_instructions_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    ## START - MY CODE

    ## END - MY CODE

  })
}

## To be copied in the UI
# mod_show_instructions_ui("show_instructions_1")

## To be copied in the server
# mod_show_instructions_server("show_instructions_1")
