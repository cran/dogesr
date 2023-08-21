\name{family.colors}
\alias{family.colors}
\title{Pre-assigned colors for every type of family}
\usage{
data("family.colors")
}
\description{
Load \code{family.colors} into the environment, assigning a color to every type of family.
}

\value{
List that assigns a fixed color for every type of family
\itemize{
  \item Key: family type as in \code{family.type}.
  \item Value: color chosen more or less related to the type.
}
}

\examples{
library(dogesr)
data("family.types")
data("family.colors")

# Which color corresponds to the type of the Dandolo family?
family.colors[[family.types[["Dandolo"]]]]
}
