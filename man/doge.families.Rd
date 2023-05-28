\name{doge.families}
\alias{doge.families}
\title{Load the list of families that became doges, and their numbers}
\usage{
data("families")
}
\description{
Load \code{doge.families} into the environment
}

\value{
A table with two columns:
\itemize{
  \item \code{Family.doge} Name of the family
  \item \code{n} Number of times this family "made" doge
}
}

\examples{
library(dogesr)
data("doge.families")

# How many times did the Dandolos became doge?
doge.families[ doge.families$Family.doge == "Dandolo",]$n

# How many families were doges?
length(doge.families$Family.doge )

}
