#' Find each eligible player's most recent rating
#'
#' Keeps the latest rating for every player with at least `min_events`
#' observations in the supplied rating histories.
#'
#' @param ratings A data frame containing `player_id`, `player_name`,
#'   `date`, and `rating`.
#' @param min_events Minimum number of observations a player must have.
#' @return A data frame with one row per eligible player, including their
#'   most recent date and rating and their total number of events.
#' @examples
#' recent_players(pokemon_elo)
#' # Each established player's latest available rating
#'
#' recent_players(pokemon_elo, min_events = 10) |>
#'   dplyr::slice_max(rating, n = 3)
#' # The current top three under a lower eligibility threshold
#' @importFrom dplyr filter group_by mutate n slice_max ungroup
#' @export
recent_players <- function(ratings, min_events = 15) {
  ratings |>
    group_by(player_id, player_name) |>
    # Count events before keeping only each player's latest rating
    mutate(events = n()) |>
    slice_max(date, n = 1, with_ties = FALSE) |>
    ungroup() |>
    # Keep only established players
    filter(events >= min_events)
}