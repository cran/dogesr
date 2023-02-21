\name{doges.years}
\alias{doges.years}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Sub-dataset with years they were ruling.
}
\description{
Create a sub-dataset with doge data and reigning years.
}
\usage{
doges.years()
}
\details{
Eliminates data from the original dataset \code{doges} \insertRef{dogesr}{dogesr} referring to dogaresse, and leaves just data for the doges, eliminating also the "raw" column.
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

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{link{doges}}
}
\examples{
library(dogesr)
data.doges.years <- doges.years()
summary(data.doges.years$Years)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
\keyword{ Venice }
\keyword{ Republica Serenissima }
\keyword{ Digital Humanities}

