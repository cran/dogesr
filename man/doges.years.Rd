\name{doges.years}
\alias{doges.years}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Sub-dataset with the list of doges, their family and when it happened.
}
\description{
A dataset with doge data and the years their reign started and ended.
}
\usage{
data("doges.years")
}
\details{
It's essentially the original dataset \code{doges} \insertRef{dogesr}{dogesr}, minus data referring to dogaresse, and leaves just data for the doges, eliminating also the "raw" columns.
}
\value{
A dataframe with the columns \code{Doge, Century, Start, End, Family, Years}
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
data("doges.years")
summary(doges.years$Years)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
\keyword{ Venice }
\keyword{ Republica Serenissima }
\keyword{ Digital Humanities}

