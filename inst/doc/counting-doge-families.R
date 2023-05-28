## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----load,warning=FALSE,message=FALSE-----------------------------------------
# library("dogesr") # If you have already installed this package
devtools::load_all(".") # Comment this, uncomment above if you have installed this package
data("doge.families")

## ----table--------------------------------------------------------------------
knitr::kable(head(doge.families[order(-doge.families$n),],n=10),row.names=F,col.names=c("Doge family","Number of doges"))

## ----family types-------------------------------------------------------------
data("families")
doge.families$type <- unname(family.types[doge.families$Family.doge])
knitr::kable(head(doge.families[order(-doge.families$n),],n=20) %>% select(1,3),row.names=F,col.names=c("Doge family","Family type"))

