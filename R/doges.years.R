globalVariables(c("data.doges"))
library(dplyr)

#' Extract just the information needed to work with the years every doge was ruling
#'
#' @return A data frame with the data for every doge, years reigning, century, family.
#' @export
#'
#

doges.years <- function() {
  data.doges.years <- data.doges
  data.doges.years$Doge.raw <- NULL
  data.doges.years$Dogaressa.raw <- NULL
  data.doges.years$Dogaressa <- NULL
  data.doges.years$Family.dogaressa <- NULL
  return(distinct(data.doges.years))
}
