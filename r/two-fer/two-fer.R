two_fer <- function(input) {
  if (missing(input)) {
    "One for you, one for me."
  } else {
    paste0("One for ", input, ", one for me.")
  }
}
