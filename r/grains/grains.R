square <- function(n) {
  if (n < 1 | n > 64)
    stop("Square must be between 1 and 64")
  2 ^ (n-1)
}

total <- function() {
  s <- 0
  for (i in 1:64)
    s <- s + square(i)
  s
}
