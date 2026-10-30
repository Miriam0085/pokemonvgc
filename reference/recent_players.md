# Find each eligible player's most recent rating

Keeps the latest rating for every player with at least `min_events`
observations in the supplied rating histories.

## Usage

``` r
recent_players(ratings, min_events = 15)
```

## Arguments

- ratings:

  A data frame containing `player_id`, `player_name`, `date`, and
  `rating`.

- min_events:

  Minimum number of observations a player must have.

## Value

A data frame with one row per eligible player, including their most
recent date and rating and their total number of events.

## Examples

``` r
recent_players(pokemon_elo)
#> # A tibble: 51 × 5
#>    player_id          player_name        date       rating events
#>    <chr>              <chr>              <date>      <dbl>  <int>
#>  1 aaron-traylor      Aaron Traylor      2026-05-29  1798.     37
#>  2 aditya-subramanian Aditya Subramanian 2026-05-29  1760.     37
#>  3 alberto-lara       Alberto Lara       2026-06-12  1783.     46
#>  4 alex-underhill     ALEX UNDERHILL     2026-06-12  1869.     40
#>  5 ashton-cox         Ashton Cox         2026-06-12  1750.     45
#>  6 ben-grissmer       Ben Grissmer       2026-06-12  1736.     36
#>  7 calvin-nisson      Calvin Nisson      2026-06-12  1628.     41
#>  8 camilo-liberona    Camilo Liberona    2026-06-12  1509.     37
#>  9 carson-confer      Carson Confer      2026-06-12  1885.     36
#> 10 chuppa-cross-iv    Chuppa Cross IV    2026-06-12  1819      41
#> # ℹ 41 more rows
# Each established player's latest available rating

recent_players(pokemon_elo, min_events = 10) |>
  dplyr::slice_max(rating, n = 3)
#> # A tibble: 3 × 5
#>   player_id   player_name date       rating events
#>   <chr>       <chr>       <date>      <dbl>  <int>
#> 1 wolfe-glick Wolfe Glick 2026-06-12  2045.     38
#> 2 eric-rios   Eric Rios   2026-06-12  2022.     40
#> 3 paul-chua   Paul Chua   2026-05-29  2008      46
# The current top three under a lower eligibility threshold
```
