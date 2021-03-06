#' Returns error if name is incorrect
#'
#' This is a wrapper function to which will return an error (via
#' \code{\link[fishflux]{name_errors}}) if the provided species name is wrong.
#'
#' @param sp A character value containing the species name
#' 
#' @returns returns an error if the species name is wrong.
#' 
#' @keywords fish fishbase taxonomy
#' 
#' @examples
#' \dontrun{
#' library(fishflux)
#' check_name_fishbase("Lutjanus griseus")
#' }
#' 
#' @export
check_name_fishbase <- function(sp) {
  if (length(suppressMessages(name_errors(sp))) > 0) {
    stop("Species name is incorrect")
  }
}
