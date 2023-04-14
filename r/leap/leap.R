leap <- function(year) {
  if (year %% 400 == 0)
    TRUE
  else if (year %% 100 == 0)
    FALSE
  else if (year %% 4 == 0)
    TRUE
  else
    FALSE
}
