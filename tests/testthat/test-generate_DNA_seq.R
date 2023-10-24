test_that("mGenerated DNA sequence is valid", {
  len <- 10
  DNA_seq <- generate_DNA_seq(len)

  # Check if the length is appropiated
  expect_equal(nchar(DNA_seq),
               len,
               info = "Generated sequence has the correct length")

  # Check if the sequence only contains A, TC, C and G
  nucleotides <- c("A", "T", "G", "C")
  expect_true(all(strsplit(DNA_seq, "")[[1]] %in% nucleotides),
              info = "Generated sequence only contins valid nucleotides")

  # Check that the nucleotides are consecutives
  expect_equal(length(DNA_seq),
               1,
              info = "Generated sequence as consecutive characters")
})
