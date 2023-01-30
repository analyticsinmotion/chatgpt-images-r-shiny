#' get_url
#'
#' @description A fct function
#'
#' @return The return value, if any, from executing the function.
#'
#' @noRd
get_url <- function(prompt, size){
  openai::create_image(prompt = prompt,
                       n = 1,
                       size = size,
                       openai_api_key = Sys.getenv('OPENAI_API_KEY')
  )[["data"]][1,]
}
