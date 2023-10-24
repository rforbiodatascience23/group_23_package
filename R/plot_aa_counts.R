#' Plot amino acid counts
#'
#'`plot_aa_counts()` determines the frequency of each amino acid in the input sequence and represents it in a bar plot.
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#'
#' @param seq
#'
#' Sequence of amino acids whose amino acid frequency we want to determine
#'
#' @return
#' The function returns a plot with the amino acid frequency of the input sequence
#'
#' @export
#'

plot_aa_counts <- function(seq){
  unique_aa <- seq |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  aa_counts <- sapply(unique_aa, function(amino_acid) stringr::str_count(string = seq, pattern = amino_acid)) |>
    as.data.frame()

  colnames(aa_counts) <- c("Counts")
  aa_counts[["Amino_Acid"]] <- rownames(aa_counts)

  aa_plot <- aa_counts |>
    ggplot2::ggplot(ggplot2::aes(x = Amino_Acid, y = Counts, fill = Amino_Acid)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(aa_plot)
}
