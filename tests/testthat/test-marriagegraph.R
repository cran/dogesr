library(igraph)
this.marriage.graph <- marriage.graph()
test_that("we have the marriage graph", {
  expect_type(this.marriage.graph,"list")
})

test_that("we have specific edges", {
  expect_true(are_adjacent(this.marriage.graph, "Candiano","Candiano"))
})

test_that("family types are assigned", {
  expect_equal(V(this.marriage.graph)["Basadonna"]$family.type,"Nuove")
})
