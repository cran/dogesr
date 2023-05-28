## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----load, warning=FALSE,message=FALSE----------------------------------------
library(dogesr)
library(igraph)
doges.sn <- marriage.graph()

## ----simplify-----------------------------------------------------------------
E(doges.sn)$weight <- 1
doges.sn <- simplify(doges.sn, edge.attr.comb=list(weight="sum"))
V(doges.sn)$degree <- degree(doges.sn)
plot(doges.sn,vertex.size=V(doges.sn)$degree, layout=layout_with_kk, vertex.label.cex=0.7)

## ----connected----------------------------------------------------------------
components <- igraph::clusters(doges.sn, mode="weak")
biggest_cluster_id <- which.max(components$csize)
vert_ids <- V(doges.sn)[components$membership == biggest_cluster_id]

doges.sn.connected <- igraph::induced_subgraph(doges.sn, vert_ids)
plot(doges.sn.connected,vertex.size=V(doges.sn.connected)$degree,layout=layout_with_fr, vertex.label.cex=0.7)

## ----newlinks-----------------------------------------------------------------
for (f in c("Pasqualigo","Foscari","Querini")) {
  print(incident(doges.sn,as.numeric(V(doges.sn)[f])))
}

