#' get_filename
#'
#' @description A fct function
#'
#' @return The return value, if any, from executing the function.
#'
#' @noRd
get_filename <- function(url){
  pattern <- "img-.*?\\.png"
  m <- gregexpr(pattern, url)
  regmatches(url, m)[[1]]
}
