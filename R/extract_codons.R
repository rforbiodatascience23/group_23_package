
#' extract_codons
#'
#' @param RNA_string RNA string from which to extract the codons.
#' @param start Starting position to start extracting the first codon. It defines the ORF (Open Reading Frame)
#'
#' @return Extracted codons, given the RNA sequence and the ORF chosen.
#' @export
#'
extracted_codons <- function(RNA_string, start = 1){
  RNA_len <- nchar(RNA_string)
  codons <- substring(RNA_string,
                      first = seq(from = start, to = RNA_len-3+1, by = 3),
                      last = seq(from = 3+start-1, to = RNA_len, by = 3))
  return(codons)
}
