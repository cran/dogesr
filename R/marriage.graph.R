globalVariables(c("doges.marriages.sn"))

#' Convert doges data into a social graph
#'
#' @return An graph with noble families as nodes, edges representing marriages of doges or parents
#' @export
#'
#

marriage.graph <- function() {
  return(doges.marriages.sn)
}
