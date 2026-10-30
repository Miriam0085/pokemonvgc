
<!-- README.md is generated from README.Rmd. Please edit that file -->

# pokemonvgc

<!-- badges: start -->

<!-- badges: end -->

pokemonvgc provides derived Elo rating histories for competitive Pokémon
Video Game Championship (VGC) players, along with recent World Champion
metadata. It helps you find each established player’s latest rating and
reproduce rating-based analyses.

## Installation

You can install the development version of pokemonvgc from GitHub with:

``` r
# install.packages("remotes")
remotes::install_github("Miriam0085/pokemonvgc")
```

## Example

Find the three highest-rated established players:

``` r
library(pokemonvgc)
recent_players(pokemon_elo) |>
  dplyr::slice_max(rating, n = 3)
#> # A tibble: 3 × 5
#>   player_id   player_name date       rating events
#>   <chr>       <chr>       <date>      <dbl>  <int>
#> 1 wolfe-glick Wolfe Glick 2026-06-12  2045.     38
#> 2 eric-rios   Eric Rios   2026-06-12  2022.     40
#> 3 paul-chua   Paul Chua   2026-05-29  2008      46
```

## What’s in the package

- `pokemon_elo`: Elo rating histories for 51 frequently observed players
  and recent champions
- `recent_champions`: recent VGC World Champions, 2022–2026
- `recent_players()`: keeps each eligible player’s most recent rating
