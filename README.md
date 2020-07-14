
<!-- README.md is generated from README.Rmd. Please edit that file -->

# minionator

<!-- badges: start -->

<!-- badges: end -->

The goal of minionator is to …

## Installation

You can install the released version of minionator from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("minionator")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(minionator)

(l <- discrete_matrix(3, 3, 0:2))
#> # A tibble: 9 x 6
#>     row   col lower upper name  type    
#>   <int> <int> <int> <int> <chr> <chr>   
#> 1     0     0     0     2 l     DISCRETE
#> 2     1     0     0     2 l     DISCRETE
#> 3     2     0     0     2 l     DISCRETE
#> 4     0     1     0     2 l     DISCRETE
#> 5     1     1     0     2 l     DISCRETE
#> 6     2     1     0     2 l     DISCRETE
#> 7     0     2     0     2 l     DISCRETE
#> 8     1     2     0     2 l     DISCRETE
#> 9     2     2     0     2 l     DISCRETE
```

``` r
library(tidyverse)

(row_latin <- tribble(
  ~constraint,             ~variables,
    "alldiff", l %>% filter(row == 0),
    "alldiff", l %>% filter(row == 1),
    "alldiff", l %>% filter(row == 2)
))
#> # A tibble: 3 x 2
#>   constraint variables       
#>   <chr>      <list>          
#> 1 alldiff    <tibble [3 × 6]>
#> 2 alldiff    <tibble [3 × 6]>
#> 3 alldiff    <tibble [3 × 6]>
```

``` r
(column_latin <- tribble(
  ~constraint,             ~variables,
    "alldiff", l %>% filter(col == 0),
    "alldiff", l %>% filter(col == 1),
    "alldiff", l %>% filter(col == 2)
))
#> # A tibble: 3 x 2
#>   constraint variables       
#>   <chr>      <list>          
#> 1 alldiff    <tibble [3 × 6]>
#> 2 alldiff    <tibble [3 × 6]>
#> 3 alldiff    <tibble [3 × 6]>
```

``` r
(latin <- list(
          variables = l,
             search = "PRINT ALL",
  unary_constraints = bind_rows(row_latin, column_latin)
))
#> $variables
#> # A tibble: 9 x 6
#>     row   col lower upper name  type    
#>   <int> <int> <int> <int> <chr> <chr>   
#> 1     0     0     0     2 l     DISCRETE
#> 2     1     0     0     2 l     DISCRETE
#> 3     2     0     0     2 l     DISCRETE
#> 4     0     1     0     2 l     DISCRETE
#> 5     1     1     0     2 l     DISCRETE
#> 6     2     1     0     2 l     DISCRETE
#> 7     0     2     0     2 l     DISCRETE
#> 8     1     2     0     2 l     DISCRETE
#> 9     2     2     0     2 l     DISCRETE
#> 
#> $search
#> [1] "PRINT ALL"
#> 
#> $unary_constraints
#> # A tibble: 6 x 2
#>   constraint variables       
#>   <chr>      <list>          
#> 1 alldiff    <tibble [3 × 6]>
#> 2 alldiff    <tibble [3 × 6]>
#> 3 alldiff    <tibble [3 × 6]>
#> 4 alldiff    <tibble [3 × 6]>
#> 5 alldiff    <tibble [3 × 6]>
#> 6 alldiff    <tibble [3 × 6]>
```

``` r
minion_output(latin)
#> MINION 3
#> **VARIABLES**
#> DISCRETE l[3,3] {0..2}
#> **SEARCH**
#> PRINT ALL
#> **CONSTRAINTS**
#> alldiff([l[0,0],l[0,1],l[0,2]])
#> alldiff([l[1,0],l[1,1],l[1,2]])
#> alldiff([l[2,0],l[2,1],l[2,2]])
#> alldiff([l[0,0],l[1,0],l[2,0]])
#> alldiff([l[0,1],l[1,1],l[2,1]])
#> alldiff([l[0,2],l[1,2],l[2,2]])
#> 
#> 
#> **EOF**
```
