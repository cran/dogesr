data.doges.years <- doges.years()
test_that("data doges years is loaded", {
  expect_vector(data.doges.years)
  expect_length(data.doges.years,6)
  expect_equal(nrow(data.doges.years),122)
})

