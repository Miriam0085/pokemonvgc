## code to prepare `pokemon-elo` dataset goes here

## Prepare pokemon_elo and recent_champions datasets

# Elo rating histories
pokemon_elo <- readr::read_csv("data-raw/pokemon-elo.csv") |>
  dplyr::mutate(date = as.Date(date)) |>
  dplyr::select(player_id, player_name, date, rating)

# Champion lookup
recent_champions <- tibble::tribble(
  ~year, ~player_id,          ~player_name,
  2022,  "eduardo-cunha",    "Eduardo Cunha",
  2023,  "shohei-kimura",    "Shohei Kimura",
  2024,  "luca-ceribelli",   "Luca Ceribelli",
  2025,  "giovanni-cischke", "Giovanni Cischke",
  2026,  "takuma-yamazaki",  "Takuma Yamazaki"
)

usethis::use_data(pokemon_elo, recent_champions, overwrite = TRUE)