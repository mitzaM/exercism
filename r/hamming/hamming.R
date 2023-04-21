# This is a stub function to take two strings
# and calculate the hamming distance
hamming <- function(strand1, strand2) {
  if (nchar(strand1) != nchar(strand2))
    stop("Strands have different length")
  if (strand1 == strand2)
    return(0)
  s.a <- strsplit(strand1, "")[[1]]
  s.b <- strsplit(strand2, "")[[1]]
  nchar(paste(s.a[s.a != s.b], collapse=""))
}
