#' set_apikey
#'
#' @description A fct function
#'
#' @return The return value, if any, from executing the function.
#'
#' @noRd
set_apikey <- function(apikey) {
  api_string <- paste("OPENAI_API_KEY=",apikey, sep = "")
  fileConn<-file(".Renviron")
  writeLines(api_string, fileConn)
  close(fileConn)
  # These 4 lines are required to update the environment variable input in settings tab
  # Otherwise it will be stuck using the one that was in the .renviron file at startup
  path <- gsub("/", "\\\\", golem::get_golem_wd())
  filename <- "\\.Renviron"
  full_path <- paste(path,filename, sep = "")
  readRenviron(full_path)
}
