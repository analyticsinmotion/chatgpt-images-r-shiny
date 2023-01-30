#' create_image UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_create_image_ui <- function(id){
  ns <- NS(id)
  tagList(

    ## START - MY CODE
    textAreaInput(ns("createimage"), label = "Enter the description to draw", rows = 3),
    selectInput(ns("imagesizes"), "Size of Images", choices = c("256x256", "512x512" , "1024x1024")),
    actionButton(ns("buttonCreateImage"), label = "Create Image", icon = icon("pencil")),
    br(),br(),br(),
    imageOutput(ns("openaiResponse"))
    ## END - MY CODE

  )
}

#' create_image Server Functions
#'
#' @noRd
mod_create_image_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

    ## START - MY CODE
    output$openaiResponse <- renderImage({
      url <- get_url(input$createimage, input$imagesizes)
      filename <- paste("inst/app/www",get_filename(url), sep = "/")
      download.file(url,filename, mode = 'wb')
      img_dimension <- as.numeric(sapply(strsplit(input$imagesizes, "x"), getElement, 1))
      list(src = filename, contentType = 'image/png',width = img_dimension, height = img_dimension,
           alt = input$createimage)
    }, deleteFile = FALSE) |>
      bindEvent(input$buttonCreateImage)
    ## END - MY CODE

  })
}

## To be copied in the UI
# mod_create_image_ui("create_image_1")

## To be copied in the server
# mod_create_image_server("create_image_1")
