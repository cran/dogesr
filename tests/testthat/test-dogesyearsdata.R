data("doges.years")
test_that("data doges years is loaded", {
  expect_vector(doges.years)
  expect_length(doges.years,6)
  expect_equal(nrow(doges.years),123)
})

test_that("There are no gaps in doges", {
  for ( doge in 1:90){
    expect_equal(doges.years[doge,]$End, doges.years[doge+1,]$Start)
  }
})
