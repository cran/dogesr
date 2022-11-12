## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----load---------------------------------------------------------------------
devtools::load_all(".")
data("doges")
data("families")

## ----years--------------------------------------------------------------------
marriages.types <- 
  data.frame( doge.family = data.doges$Family.doge,
              dogaressa.family = data.doges$Family.dogaressa,
              fam.type.doge = unname( unlist ( family.types[ data.doges$Family.doge ] )),
              fam.type.dogaressa = unname( unlist ( family.types[ data.doges$Family.dogaressa ] ))
)
knitr::kable(marriages.types)

## ----types--------------------------------------------------------------------
marriages.just.types <- marriages.types
marriages.just.types$doge.family <- NULL
marriages.just.types$dogaressa.family <- NULL
marriages.just.types$fam.type.doge <- paste0(marriages.just.types$fam.type.doge,"♂")
marriages.just.types$fam.type.dogaressa <- paste0(marriages.just.types$fam.type.dogaressa,"♀")
levs <- c(unique(unlist(marriages.just.types$fam.type.doge, use.names = FALSE)),unique(unlist(marriages.just.types$fam.type.dogaressa, use.names = FALSE)))
types.adjacency <- table(lapply(marriages.just.types, factor, levs))
types.adjacency <- types.adjacency[,-c(1:9)]
types.adjacency <- types.adjacency[-c(10:18),]
knitr::kable(types.adjacency)

## ----sankey-------------------------------------------------------------------
library(tidyr)
library(dplyr)
library(tibble)
links <- types.adjacency  %>% as.data.frame() 
nodes <- data.frame(
  name=c(as.character(links$fam.type.doge), as.character(links$fam.type.dogaressa)) %>% 
    unique()
  )
links$IDsource <- match(links$fam.type.doge, nodes$name)-1 
links$IDtarget <- match(links$fam.type.dogaressa, nodes$name)-1

library(networkD3)
links <- links[ links$Freq > 0,]
sankeyNetwork(Links = links, Nodes = nodes,
                     Source = "IDsource", Target = "IDtarget",
                     Value = "Freq", NodeID = "name", 
                     sinksRight=FALSE)

## ----non.na-------------------------------------------------------------------
types.adjacency <- types.adjacency[-1,-1]
links2 <- types.adjacency  %>% as.data.frame() 
nodes2 <- data.frame(
  name=c(as.character(links2$fam.type.doge), as.character(links2$fam.type.dogaressa)) %>% 
    unique()
  )
links2$IDsource <- match(links2$fam.type.doge, nodes2$name)-1 
links2$IDtarget <- match(links2$fam.type.dogaressa, nodes2$name)-1
links2 <- links2[ links2$Freq > 0,]
sankeyNetwork(Links = links2, Nodes = nodes2,
                     Source = "IDsource", Target = "IDtarget",
                     Value = "Freq", NodeID = "name")

