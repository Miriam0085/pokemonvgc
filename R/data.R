#' Pokemon Video Game Championship Elo rating histories
#'
#' @format A data frame with 2,043 rows and 4 columns:
#' \describe{
#'   \item{player_id}{Stable player identifier}
#'   \item{player_name}{Player display name}
#'   \item{date}{Date of the rated event}
#'   \item{rating}{Estimated Elo rating after the event}
#' }
#' @details Elo is estimated from the available match archive and is not
#'   an official ranking. Coverage varies across events.
#' @source Match data compiled by VGC History,
#'   <https://vgchistory.com/data>
"pokemon_elo"

#' Recent Pokemon VGC World Champions
#'
#' @format A data frame with 5 rows and 3 columns:
#' \describe{
#'   \item{year}{Championship year}
#'   \item{player_id}{Stable player identifier}
#'   \item{player_name}{Player display name}
#' }
#' @details The 2026 champion has no rows in `pokemon_elo` because the
#'   rating snapshot does not include their history.
#' @source VGC History, <https://vgchistory.com/>
"recent_champions"