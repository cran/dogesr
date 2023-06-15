\name{marriage.graph.slice}
\alias{marriage.graph.slice}
\title{Data on doges' matrimonial links}

\description{
Partial graph of doge marriages as an \code{igraph} object; it includes doges' marriages, as well as their fathers', when available, but only for the period comprised between the two doges indicated
}

\usage{
marriage.graph.slice(...,from="Orso",to="Ludovico Manin")
}

\arguments{
\item{...}{Not really used}
\item{from}{A doge name, the first by default}

\item{to}{Another doge name, the last by default}
}
\details{
The result of calling the function is an \code{igraph} object, which you can use to plot the doges social network. Nodes are families, or "casate", and links indicate a wedding has taken place between the two families. The doges not comprised between the two slices, or the beginning or end and the indicated last or first, are not included.
}

\value{
A list that can be used as an \code{igraph} object, with noble family names as vertices and edges indicating links
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
\code{link{marriage.graph}}
}

\examples{
library(dogesr)
library(igraph)

# From that one to the end
from.sagredo <- marriage.graph.slice( from="Nicolo Sagredo")

# From the first one to Sagredo
to.sagredo <- marriage.graph.slice( to="Nicolo Sagredo")

# From the first to the last Contarini
from.sagredo <- marriage.graph.slice(
                  from="Domenico I Contarini",
                  to="Luigi Contarini"
                )

}

\keyword{ Venice }
\keyword{ Republica Serenissima }
\keyword{ Digital Humanities}
\keyword{ Social Network Analysis }
