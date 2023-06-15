library(igraph)

globalVariables(c("data.doges"))

#' Convert doges data into a social graph
#' @param from Exact name of the doge, Orso (first doge) by default
#' @param to Exact name of the last doge, Ludovico Manin (last one) by default
#' @return A graph with noble families as nodes, edges representing marriages of doges or parents; the type of family is the attribute family.type
#' @export
#'
#

marriage.graph.slice <- function(..., from="Orso",to="Ludovico Manin") {
  from.index <- which(data.doges$Doge == from )[1]
  to.values <- which(data.doges$Doge == to )
  to.index <- to.values[length(to.values)]
  sliced <- data.doges[from.index:to.index,]
  doges.marriages.df <- data.frame(sliced$Family.doge,sliced$Family.dogaressa)
  doges.marriages.df <- doges.marriages.df[ (doges.marriages.df$sliced.Family.doge != '' ) & (doges.marriages.df$sliced.Family.dogaressa != ''),]
  doges.mothers.df <- data.frame(sliced$Family.doge,sliced$Family.mother)
  doges.mothers.df <- doges.mothers.df[ (doges.mothers.df$sliced.Family.doge != '' ) & (doges.mothers.df$sliced.Family.mother != ''),]
  all.links <- data.frame(doge.or.father = c(doges.marriages.df$sliced.Family.doge,doges.mothers.df$sliced.Family.doge),
                          dogaressa.or.mother = c(doges.marriages.df$sliced.Family.dogaressa,doges.mothers.df$sliced.Family.mother))
  return(graph.data.frame(all.links,directed=F))
}
