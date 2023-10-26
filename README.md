
<!-- README.md is generated from README.Rmd. Please edit that file -->

Github link to the package:
<https://github.com/rforbiodatascience23/group_23_package>

# Introduction

The group_23_package is a versatile tool for molecular biologists,
geneticists, and bioinformaticians. It provides a set of functions for
working with DNA, RNA, codons, and amino acids. The package’s final goal
is to make it easier for researchers to analyze genetic data, with a
specific focus on plotting the amino acid content. In this vignette, we
will explore the functions and their applications.

## Instalation

You can install the group_23_package from GitHub using the following
command:

``` r
devtools::install_github("rforbiodatascience23/group_23_package")
#> 
#> ── R CMD build ─────────────────────────────────────────────────────────────────
#> * checking for file ‘/tmp/Rtmpek6HeB/remotesc620e1044a4c7/rforbiodatascience23-group_23_package-a0c2170/DESCRIPTION’ ... OK
#> * preparing ‘enigma’:
#> * checking DESCRIPTION meta-information ... OK
#> * checking for LF line-endings in source and make files and shell scripts
#> * checking for empty or unneeded directories
#> * building ‘enigma_0.1.0.tar.gz’
#library(group_23_package)
library(enigma)
```

### Function 1: transcribe

The transcribe function transcribes DNA sequences into RNA sequences by
replacing thymine (T) with uracil (U). Let’s transcribe a DNA sequence:

``` r
DNA_seq <- "ATGGCTTAG"
RNA_seq <- transcribe(DNA_seq)
RNA_seq
#> [1] "AUGGCUUAG"
# The output is the RNA sequence: "AUGGCUUAG"
```

### Function 2: extracted_codons

The extracted_codons function extracts codons from an RNA sequence,
considering the start position as the Open Reading Frame (ORF). Here’s
how you can use it:

``` r
RNA_seq <- "AUGCUUAAAGGGUAG"
codons <- extracted_codons(RNA_seq, start = 1)
codons
#> [1] "AUG" "CUU" "AAA" "GGG" "UAG"
# The output id the RNA string splitted into codons: "AUG" "CUU" "AAA" "GGG" "UAG"
```

### Function 3: codon_table

codon_table assumes the role of a pivotal reference or dictionary and
data repository within the package for the purpose of
codon-to-amino-acid translation. It functions as an essential component,
particularly for operations conducted by functions like codon_to_aa that
are responsible for the actual translation process.

### Function 4: codon_to_aa

The codon_to_aa function translates codons into amino acids using the
provided genetic code. Let’s translate a list of codons:

``` r
codons <- c("AUG", "CUU", "AAA", "GGG", "UAG")
aminoacid_seq <- codon_to_aa(codons)
aminoacid_seq
#> [1] "MLKG_"

# The output is a list of the aminoacids: Met, Leu, Lys, Gly. The last codon is the STOP codon
```

### Function 5: plot_aa_counts

The plot_aa_counts function is used to visualize the frequency of amino
acids in a sequence. Here’s how you can create a bar plot for an amino
acid sequence:

``` r
amino_acid_seq <- "MCLNDSFQHTGEKR"
aa_plot <- plot_aa_counts(amino_acid_seq)
print(aa_plot)
```

<img src="man/figures/README-unnamed-chunk-6-1.svg" width="100%" />

# Use Cases

The group_23_package is particularly useful for a variety of tasks in
genetics and bioinformatics. Some potential use cases include:

Molecular Biology: You can use this package to transcribe DNA, translate
codons, and visualize amino acid frequencies, aiding in gene expression
analysis.

Genetic Engineering: It can assist in designing synthetic genes and
optimizing codon usage for expression in specific organisms.

Phylogenetics: The package can be used to analyze genetic variation and
evolutionary relationships by comparing codon sequences.

# Future Developments

The group_23_package can be extended with additional functionalities in
the future, such as:

Genetic Variation Analysis: Including functions for identifying
mutations and analyzing their impact on protein structure.

Amino Acid Properties: Incorporating tools for assessing amino acid
properties like hydrophobicity, charge, and size.

Phylogenetic Analysis: Expanding capabilities for phylogenetic tree
construction and visualization.

The group_23_package is a valuable resource for those working with
genetic data, and we look forward to its continued development.

Thank you for using the group_23_package!

# Number of dependencies

Limiting dependencies in a package is essential for simplicity,
maintainability, and security, as it reduces complexity and the risk of
compatibility issues while improving performance and the user
experience. However, complete avoidance of dependencies is not always
feasible. Certain functionalities necessitate external libraries, and
well-established code may be more efficient to reuse. Striking the right
balance between functionality, usability, and maintainability is
essential in making informed decisions about when to include
dependencies in a package.

# The @importFrom vs. the package::function()

When it comes to the inclusion of dependencies in packages, two distinct
approaches may be employed. First, the utilization of @importFrom is
recommended when the requirement pertains to just one or a couple of
functions from an external package. In contrast, the employment of the
syntax package::function() is advised when the necessity arises for a
more extensive utilization of multiple functions from the aforementioned
package. Furthermore, the use of @importFrom serves to mitigate the
likelihood of namespace conflicts, while employing package::function()
is instrumental in clearly designating the source package of the desired
functions.

In the particular context of the enigma package, a deliberate choice was
made to consistently use the package::function() notation throughout the
code. This decision was undertaken to unambiguously specify the origin
of the functions being utilized. Additionally, @importFrom was
integrated into the package description, enumerating the specific
functions being employed from external packages. This meticulous
approach was taken with the objective of forestalling potential
namespace conflicts. To be more precise, the functions incorporated
include ggplot, aes, geom_col, theme_bw, and theme from the ggplot2
package, as well as str_split, boundary, and str_count from the stringr
package.
