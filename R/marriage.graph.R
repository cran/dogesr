library(igraph)

globalVariables(c("doges.marriages.sn","family.types"))

#' Convert doges data into a social graph
#'
#' @importFrom igraph V V<-
#'
#' @return A graph with noble families as nodes, edges representing marriages of doges or parents; the type of family is the attribute family.type
#' @export
#'
#

marriage.graph <- function() {
  V(doges.marriages.sn)$family.type <- sapply( V(doges.marriages.sn)$name, function(x) family.types[x] )
  return(doges.marriages.sn)
}
