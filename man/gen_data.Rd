% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gen_data.R
\name{gen_data}
\alias{gen_data}
\title{Generate TWFE data}
\usage{
gen_data(
  g1 = 2000,
  g2 = 2010,
  g3 = 0,
  panel = c(1990, 2020),
  te1 = 2,
  te2 = 2,
  te3 = 2,
  te_m1 = 0,
  te_m2 = 0,
  te_m3 = 0,
  n = 1500
)
}
\arguments{
\item{g1}{treatment date for group 1. For no treatment, set g = 0.}

\item{g2}{treatment date for group 2. For no treatment, set g = 0.}

\item{g3}{treatment date for group 3. For no treatment, set g = 0.}

\item{panel}{numeric vector of size 2, start and end years for panel}

\item{te1}{treatment effect for group 1. Will ignore for that group if g = 0.}

\item{te2}{treatment effect for group 1. Will ignore for that group if g = 0.}

\item{te3}{treatment effect for group 1. Will ignore for that group if g = 0.}

\item{te_m1}{treatment effect slope per year}

\item{te_m2}{treatment effect slope per year}

\item{te_m3}{treatment effect slope per year}

\item{n}{number of individuals in sample}
}
\value{
Dataframe of generated data
}
\description{
Generate TWFE data
}
\examples{
# Homogeneous treatment effect
df_hom <- gen_data(panel = c(1990, 2020),
    g1 = 2000, g2 = 2010, g3 = 0,
    te1 = 2, te2 = 2, te3 = 0,
    te_m1 = 0, te_m2 = 0, te_m3 = 0)
# Heterogeneous treatment effect
df_het <- gen_data(panel = c(1990, 2020),
    g1 = 2000, g2 = 2010, g3 = 0,
    te1 = 2, te2 = 1, te3 = 0,
    te_m1 = 0.05, te_m2 = 0.15, te_m3 = 0)

}
