data("doges")
test_that("data is loaded", {
  expect_vector(data.doges)
  expect_length(data.doges,11)
  expect_equal(nrow(data.doges),136)
})

test_that("doges have family names", {
  for ( doge in 1:nrow(data.doges)){
    expect_true(data.doges[doge,]$Family.doge != '')
  }
})
