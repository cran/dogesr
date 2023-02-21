globalVariables(c("data.doges"))
library(igraph)

#' Convert doges data into a social graph
#'
#' @return An graph with noble families as nodes, edges representing marriages of doges or parents
#' @export
#'
#

marriage.graph <- function() {
  doges.marriages.df <- data.frame(data.doges$Family.doge,data.doges$Family.dogaressa)
  doges.marriages.df <- doges.marriages.df[ (doges.marriages.df$data.doges.Family.doge != '' ) & (doges.marriages.df$data.doges.Family.dogaressa != ''),]
  doges.mothers.df <- data.frame(data.doges$Family.doge,data.doges$Family.mother)
  doges.mothers.df <- doges.mothers.df[ (doges.mothers.df$data.doges.Family.doge != '' ) & (doges.mothers.df$data.doges.Family.mother != ''),]
  all.links <- data.frame(doge.or.father = c(doges.marriages.df$data.doges.Family.doge,doges.mothers.df$data.doges.Family.doge),
                          dogaressa.or.mother = c(doges.marriages.df$data.doges.Family.dogaressa,doges.mothers.df$data.doges.Family.mother))
  return(graph.data.frame(all.links,directed=F))
}
