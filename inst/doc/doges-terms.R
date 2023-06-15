## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----load---------------------------------------------------------------------
library(dogesr)
data("doges")

## ----years--------------------------------------------------------------------
doges.all.years <- data.frame( doge = data.doges$Doge, years = data.doges$Years)

## ----same.year----------------------------------------------------------------
knitr::kable(doges.all.years[doges.all.years$years == 0,]$doge, col.names=NULL)

## ----one.year.or.less---------------------------------------------------------
doges.one.year <- unique(doges.all.years[doges.all.years$years <= 1,])
knitr::kable(doges.one.year[order(doges.one.year$years),],col.names=NULL)

## ----longest.doge-------------------------------------------------------------
knitr::kable(doges.all.years[which.max(doges.all.years$years),])

## ----using.doges.years--------------------------------------------------------
data("doges.years")
knitr::kable(head(doges.years[order(-doges.years$Years),],10))

## ----distribution, fig.cap="This histogram reproduces, with a fixed bin size, Figure 1 in [@smith2021long]."----
library(ggplot2)
ggplot(doges.years, aes(x=Years))+geom_histogram(binwidth=5)

## ----boxplot------------------------------------------------------------------
doges.years$Century <- as.factor(doges.years$Century)
ggplot(doges.years, aes(x=Century,y=Years))+geom_boxplot()

## ----serrata------------------------------------------------------------------
doges.years$pre.serrata <- TRUE
doges.years[doges.years$Start >= 1297,]$pre.serrata <- FALSE
means <- aggregate(Years ~  pre.serrata, doges.years, mean)
medians <- aggregate(Years ~  pre.serrata, doges.years, median)
ggplot(doges.years, aes(x=pre.serrata, y=Years))+geom_boxplot(notch=T)+
  stat_summary(fun=mean, geom="point", shape=20, size=3, color="red", fill="red") +
  geom_text(data = means, aes(label = round(Years, 2), y = Years + 2), size = 3) + 
  geom_text(data = medians, aes(label = round(Years, 2), y = Years - 1), size = 3)

## ----wilcox-------------------------------------------------------------------
wilcox.test(doges.years[doges.years$pre.serrata == T,]$Years,   doges.years[doges.years$pre.serrata == F,]$Years )

