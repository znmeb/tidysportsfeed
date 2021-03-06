% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/archetype_models.R
\name{archetype_search}
\alias{archetype_search}
\title{Archetype Search}
\usage{
archetype_search(
  player_totals,
  player_labels,
  num_steps = 1:5,
  nrep = 4,
  verbose = FALSE
)
}
\arguments{
\item{player_totals}{a tibble of the values to use for archetypal analysis.
The first column must be the player name, which must match the player name
in the player_labels. The archetypes will be sorted on the second columns.}

\item{player_labels}{a tibble with the labels (player and team names,
positions, etc.). They may overlap with the totals. The leftmost column must
be the player name, which must match the player name in \code{player_totals}..}

\item{num_steps}{number of steps to use (default 1:5)}

\item{nrep}{number of repetitions at each step (default 4)}

\item{verbose}{should the search be verbose? (default FALSE)}
}
\value{
a list of
\itemize{
\item archetype_parameters the parameters that define each archetype
\item player_alphas the players tagged with their loadings on each archetype
\item archetype_model the model object - the \code{bestModel} with \code{num_steps}
archetypes
\item all of the models}
}
\description{
stepwise search of archetype counts
}
