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
doges.years.all <- doges.years()
knitr::kable(head(doges.years.all[order(-doges.years.all$Years),],10))

## ----distribution, fig.cap="This histogram reproduces, with a fixed bin size, Figure 1 in [@smith2021long]."----
library(ggplot2)
ggplot(doges.years.all, aes(x=Years))+geom_histogram(binwidth=5)

## ----boxplot------------------------------------------------------------------
doges.years.all$Century <- as.factor(doges.years.all$Century)
ggplot(doges.years.all, aes(x=Century,y=Years))+geom_boxplot()

## ----serrata------------------------------------------------------------------
doges.years.all$pre.serrata <- TRUE
doges.years.all[doges.years.all$Start >= 1297,]$pre.serrata <- FALSE
means <- aggregate(Years ~  pre.serrata, doges.years.all, mean)
medians <- aggregate(Years ~  pre.serrata, doges.years.all, median)
ggplot(doges.years.all, aes(x=pre.serrata, y=Years))+geom_boxplot(notch=T)+
  stat_summary(fun=mean, geom="point", shape=20, size=3, color="red", fill="red") +
  geom_text(data = means, aes(label = round(Years, 2), y = Years + 2), size = 3) + 
  geom_text(data = medians, aes(label = round(Years, 2), y = Years - 1), size = 3)

## ----wilcox-------------------------------------------------------------------
wilcox.test(doges.years.all[doges.years.all$pre.serrata == T,]$Years,   doges.years.all[doges.years.all$pre.serrata == F,]$Years )

