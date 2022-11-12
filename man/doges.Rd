\name{data.doges}
\alias{data.doges}
\title{Load data into the environment}
\usage{
data("doges")
}
\description{
Load \code{data.doges} into the environment
}

\value{
A dataframe with a row for every doge and doge marriage, and the columns
\itemize{
  \item \code{Doge} Full name of the doge.
  \item \code{Dogaressa} Full name of the dogaressa (wife of the doge).
  \item \code{Doge.raw} Full entry copied from the Wikipedia, original format; includes years of rule.
  \item \code{Dogaressa.raw} Full entry copied from the Wikipedia, original format. Years of marriage are include when known; in other cases, they are simply the same as the years of ruling.
  \item \code{Century, Start, End, Years } Century where the office of the doge took place, years it started and ended, and how many years it lasted, parsed from \code{Doge.raw}.
  \item \code{Family.doge, Family.dogaressa} Normalized names of the patrician family the doge and dogaressa belonged. The second is null if it was not a patrician family (usual in the first centuries).
  \item \code{Family.mother} The family name of the mother of the doge, extracted generally from the Wikipedia
}
}

\examples{
library(dogesr)
data("doges")
# A summary of the duration of the doges ruling
summary(data.doges$Years)

# The families that actually "made doge"
unique(data.doges$Family.doge)

# Families that had either doge or dogaresse
unique( c(data.doges$Family.doge,data.doges$Family.dogaressa))
}
