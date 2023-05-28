\name{marriage.graph}
\alias{marriage.graph}
\title{Data on doges' matrimonial links}

\description{
Extract matrimonial links as an \code{igraph} object; it includes doges' marriages, as well as their fathers', when available.
}

\usage{
marriage.graph()
}

\details{
The result of calling the function is an unfiltered \code{igraph} object, which you can use to plot the doges social network. Nodes are families, or "casate", and links indicate a wedding has taken place between the two families.
}

\value{
A list that can be used as an igraph object, with noble family names as vertices and edges indicating links
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
all.matrimonial.links <- marriage.graph()

# All families linked to the Contarinis
incident(all.matrimonial.links,as.numeric(V(all.matrimonial.links)["Contarini"]))
}

\keyword{ Venice }
\keyword{ Republica Serenissima }
\keyword{ Digital Humanities}
