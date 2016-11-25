
<!-- README.md is generated from README.Rmd. Please edit that file -->
minionator
==========

Generate [Minion](http://constraintmodelling.org/minion/) input files in R.

Installation
------------

You can install minionator from github with:

``` r
# install.packages("devtools")
devtools::install_github("MHenderson/minionator")
```

Example
-------

``` r
library(minionator)
#> 
#> Attaching package: 'minionator'
#> The following object is masked from 'package:base':
#> 
#>     row

hsols(1^2)
#> MINION 3
#> 
#> **VARIABLES**
#> 
#> DISCRETE l[2,2] {0..2}
#> **SEARCH**
#> PRINT ALL
#> 
#> **CONSTRAINTS**
#> 
#> # Latin constraints
#> 
#> ## Rows
#> 
#> alldiff([l[0, 1]])
#> alldiff([l[1, 0]])
#> 
#> ## Columns
#> 
#> alldiff([l[1, 0]])
#> alldiff([l[0, 1]])
#> 
#> # Holes
#> 
#> eq(l[0, 0], 0)
#> occurrence(l[0, _], 1, 0)
#> occurrence(l[0, _], 0, 1)
#> occurrence(l[_, 0], 1, 0)
#> occurrence(l[_, 0], 0, 1)
#> occurrence(l[1, _], 2, 0)
#> occurrence(l[1, _], 0, 1)
#> occurrence(l[_, 1], 2, 0)
#> occurrence(l[_, 1], 0, 1)
#> 
#> # Self-orthgonality constraints
#> 
#> watchvecneq([l[0,1],l[1,0]],[l[1,0],l[0,1]])
#> watchvecneq([l[1,0],l[0,1]],[l[0,1],l[1,0]])
#> **EOF**
#> RspFileProduct:
#> Pathname: /home/matthew/workspace/minionator/hsols.minion
#> File size: 571 bytes
#> Content type: NA
#> Has processor: FALSE
```

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
