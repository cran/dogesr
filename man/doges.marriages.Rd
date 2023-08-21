\name{doges.marriages.sn}
\alias{doges.marriages.sn}
\title{Data on doges' (and parents) matrimonial links}

\description{
An `igraph` object that includes doges' marriages, as well as their fathers', when available.
}

\usage{
data(doges.marriages)
}

\value{
An `igraph` objects, with vertices corresponding to dogi/dogaresse
families, edges (links) corresponding to recorded.

Every node has two attributes
\itemize{
  \item \code{family.type} Traditional "type" of the family, depending on how it became noble.
  \item \code{family.type.color} Color codes for every type of family, for easy plotting
}

}

\references{
\insertAllCited{}
}
\author{J. J. Merelo}
\note{
Data originally from the Wikipedia
}

\seealso{
\code{link{doges}}
}

\examples{
library(dogesr)
library(igraph)
data(doges.marriages)

# All families linked to the Contarinis
incident(doges.marriages.sn,as.numeric(V(doges.marriages.sn)["Contarini"]))

# Plot graph, with colors depending on the type of family
plot(doges.marriages.sn,vertex.color=V(doges.marriages.sn)$family.type.color)
}

\keyword{ Venice }
\keyword{ Republica Serenissima }
\keyword{ Digital Humanities}
