#' get_images
#'
#' @description A fct function
#'
#' @return The return value, if any, from executing the function.
#'
#' @noRd
get_images <- function() {
  images <- list.files(path="inst/app/www", pattern=".png", all.files=FALSE, full.names=TRUE)
  lapply(images,
         function(x) {
           renderImage({
             list(src = x, width = 256, height = 256, alt = x)}, deleteFile = FALSE)
         })
}
