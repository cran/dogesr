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
families, edges (links) corresponding to recorded marriages
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
}

\keyword{ Venice }
\keyword{ Republica Serenissima }
\keyword{ Digital Humanities}
