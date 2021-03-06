% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Show_database_information.R
\name{show_which_ccls_contain_variant}
\alias{show_which_ccls_contain_variant}
\title{Cancer cell lines with specific variant}
\usage{
show_which_ccls_contain_variant(
    start,
    end,
    chromosome,
    ref_gen,
    library_name,
    mutational_weight_inclusion_threshold
)
}
\arguments{
\item{start}{Start coordinate}

\item{end}{Stop coordinate}

\item{chromosome}{Chromosome, 'chr' prefixes are ignored}

\item{ref_gen}{a character vector specifying the reference genome 
version. All training sets are associated with a reference genome 
version. Default is \code{"GRCH37"}.}

\item{library_name}{Name of the reference library}

\item{mutational_weight_inclusion_threshold}{Include only mutations 
with a weight of at least x. Range: 0.0 to 1.0. 1= unique to CL. 
~0 = found in many CCL samples.}
}
\value{
Returns a GenomicRanges object that contains the variant if present.
Member ccls can be found in the $Member_ccl vector
}
\description{
This function displays all cancer cell lines in the database which 
contain a specified variant. Utilizes closed interval coordinates.
}
\examples{
show_which_ccls_contain_variant(
    start = 92030762,
    end = 92030762,
    chromosome = 8,
    ref_gen = "GRCH37",
    library_name = "CELLMINER",
    mutational_weight_inclusion_threshold = 0
)
}
