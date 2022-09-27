data("doges")
test_that("data is loaded", {
  expect_vector(data.doges)
  expect_length(data.doges,10)
  expect_equal(nrow(data.doges),129)
})
data
