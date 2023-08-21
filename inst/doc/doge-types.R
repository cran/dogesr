## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----load---------------------------------------------------------------------
library(dogesr)
data("doges")
data("families")
data("family.colors")

doge.type <- unname(unlist(family.types[data.doges$Family.doge]))
doge.type.color <- unname(unlist(family.colors[doge.type]))
doge.timeline <- data.frame(start=data.doges$Start,end=data.doges$End,type=doge.type,color=doge.type.color)

## ----plot---------------------------------------------------------------------
library(ggplot2)
library(ggthemes)
ggplot(doge.timeline,aes(x=doge.timeline$end))+geom_segment(aes(x=start,xend=end,y=doge.type,yend=doge.type,color=doge.type.color))+theme_economist()+theme(legend.position="none")+xlab("Year")

