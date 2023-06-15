## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----load, warning=FALSE,message=FALSE----------------------------------------
library(dogesr)
library(igraph)

pre.serrata <- marriage.graph.slice(to="Pietro Gradenigo")
post.serrata <- marriage.graph.slice(from="Marino Zorzi")

## ----simplify-----------------------------------------------------------------
weightify <- function( a.graph ) {
  other.graph <- a.graph
  E(other.graph)$weight <- 1
  other.graph <- simplify(other.graph, edge.attr.comb=list(weight="sum"))
  return(other.graph)
}
pre.serrata <- weightify(pre.serrata)
post.serrata <- weightify(post.serrata)

V(pre.serrata)$EV <- unname(unlist(eigen_centrality(pre.serrata)$vector))
V(post.serrata)$EV <- unname(unlist(eigen_centrality(post.serrata)$vector))
plot(pre.serrata,vertex.size=V(pre.serrata)$EV, layout=layout_nicely, vertex.label.cex=0.7)
plot(post.serrata,vertex.size=V(post.serrata)$EV, layout=layout_nicely, vertex.label.cex=0.7)

