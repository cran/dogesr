\name{family.types}
\alias{family.types}
\title{Load data for Venetian family types into the environment}
\usage{
data("families")
}
\description{
Load \code{family.types} into the environment
}

\value{
A list with  every noble family in the republic of Venice, and the columns
\itemize{
  \item Key: family name.
  \item Value: type of family: Estinte, Vecchie, Apostoliche, Evangeliche, Ducali, Nuove, Nuovissime, Soldo; this last name is not standard, and simply describe those who paid to be included into the Maggior Consiglio. This describes how they accessed nobility.
}
Main design decision here is that this can be used as external index for the type of family.
}



\examples{
library(dogesr)
data("families")

# Which type was the Dandolo family?
family.types[["Dandolo"]]

# Which families bought their way into the nobility
family.types == "Soldo"
# The families that actually "made doge"
unique(data.doges$Family.doge)

# Families that had either doge or dogaresse
unique( c(data.doges$Family.doge,data.doges$Family.dogaressa))
}
