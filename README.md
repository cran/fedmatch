
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fedmatch

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/fedmatch)](https://CRAN.R-project.org/package=fedmatch)
[![R-CMD-check](https://github.com/seunglee98/fedmatch/workflows/R-CMD-check/badge.svg)](https://github.com/seunglee98/fedmatch/actions)
<!-- badges: end -->

The goal of fedmatch is to match un-linked datasets. It provides a
variety of tools that allow a user to build a custom matching algorithm
for their specific application. To get started, see the “Introduction to
Fedmatch” vignette by installing fedmatch and running
`vignette("Intro-to-fedmatch")`. For more advanced uses, see the rest of
the vignettes by running `vignette(package = "fedmatch")`.

# Installation

You can install ‘fedmatch’ from [CRAN](https://cran.r-project.org/) with

    install.packages("fedmatch")

You can install the development version from
[GitHub](https://github.com/) with:

``` r
install.packages("devtools")
devtools::install_github("seunglee98/fedmatch", build_vignettes = TRUE)
```

Or, you can download the folder from github, either by cloning it or
downloading it manually and unzipping it, then running:

``` r
devtools::install("path_to_fedmatch", build_vignettes = TRUE)
```

# Citation

This package is licensed under the terms of the MIT license. See the
LICENSE.md file for details.

If you use this package for your research, please cite the technical
paper:

Cohen, Gregory J., Melanie Friedrichs, Kamran Gupta, William Hayes,
Seung Jung Lee, W. Blake Marsh, Nathan Mislang, Maya Shaton, and Martin
Sicilian (2018). “The U.S. Syndicated Loan Market: Matching Data,”
Finance and Economics Discussion Series 2018-085. Washington: Board of
Governors of the Federal Reserve System,
<https://doi.org/10.17016/FEDS.2018.085>.
