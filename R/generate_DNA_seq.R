#' DNA sequence generator.
#'
#' `generate_DNA_seq()` generates a random DNA sequence of the desired length.
#'
#' @param seq_len
#'
#' Length of the DNA sequence that will be generated
#'
#' @return
#' The function returns the sequence of nucleotides that conform the DNA
#' @export
#'

generate_DNA_seq <- function(seq_len) {
  nucleotides <- sample(c("A", "T", "G", "C"), size = seq_len, replace = TRUE)
  DNA_seq <- paste0(nucleotides, collapse = "")
  return(DNA_seq)
}
