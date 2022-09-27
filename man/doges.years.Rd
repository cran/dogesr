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
Eliminates data from the original dataset \code{doges} referring to dogaresse, and leaves just data for the doges, eliminating also the "raw" column.
}
\value{
A dataframe with the columns \code{Doge, Century, Start, End, Family, Years} 
}
\references{
@misc{https://doi.org/10.48550/arxiv.2209.07334,
  doi = {10.48550/ARXIV.2209.07334},
  
  url = {https://arxiv.org/abs/2209.07334},
  
  author = {Merelo-Guervós, J. J.},
  
  keywords = {Social and Information Networks (cs.SI), Computers and Society (cs.CY), FOS: Computer and information sciences, FOS: Computer and information sciences},
  
  title = {What is a good doge? Analyzing the patrician social network of the Republic of Venice},
  
  publisher = {arXiv},
  
  year = {2022},
  
  copyright = {Creative Commons Attribution Share Alike 4.0 International}
}

}
\author{
J. J. Merelo
}
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
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
