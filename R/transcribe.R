#' Transcription of DNA into RNA
#'
#''transcribe()' transcribes a given DNA sequence into an RNA sequence
#' @param DNA_seq DNA sequence to be transcribed
#'
#' @return RNA sequence transcribed from DNA sequence
#' @export
#'

transcribe <- function(DNA_seq){
  RNA_seq <- gsub("T", "U", DNA_seq)
  return(RNA_seq)
}
