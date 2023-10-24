test_that("codon_to_aa works", {
  codon_to_aa(c("UUU", "CCC", "CCC", "AUG"))
})

test_that("codon_to_aa works", {
  codon_to_aa(c("AAA", "ACC", "GGU", "AUG"))
})
