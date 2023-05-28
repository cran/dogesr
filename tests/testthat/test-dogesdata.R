data("doges")
test_that("data is loaded", {
  expect_vector(data.doges)
  expect_length(data.doges,11)
  expect_equal(nrow(data.doges),135)
})
data
