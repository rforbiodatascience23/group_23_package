context("Testing extracted_codons function")

test_that("Extracted codons are correct", {
  RNA_string <- "AUGCUAGCGUAG"
  expected_output <- c("AUG", "CUA", "GCG", "UAG")

  result <- extracted_codons(RNA_string, start = 1)
  expect_equal(result, expected_output)
})

test_that("Extracted codons with a different start position", {
  RNA_string <- "AUGCUAGCGUAG"
  expected_output <- c("UGC", "UAG", "CGU")

  result <- extracted_codons(RNA_string, start = 2)
  expect_equal(result, expected_output)
})

