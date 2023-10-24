#'  Translation of codons into amino acids
#'
#' `codon_to_aa()` translates a codon sequence into an amino acid sequence
#'
#' @param codons List of codons to translate into their amino acid sequence
#'
#' @return Amino acid sequence corresponding to the codon list
#' @export

codon_to_aa <- function(codons){
  aminoacid_seq <- paste0(codon_table[codons], collapse = "")
  return(aminoacid_seq)
}
