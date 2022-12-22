#' Irwin-Hall distribution plot
#'
#' @param obj an object of irwinhall class
#' @param dist "pdf" for plotting probability density function, "cdf" for cumulative distribution function
#' @param ... other parameters for plot function
#'
#' @return nothing
#' @export
#'
#' @seealso
#'
#' @examples
#' plotIH.irwinhall(irwinhall(5),dist="pdf")

#' @export
plotIH.irwinhall <- function(obj, dist = c("pdf", "cdf"), ...) {
  if(dist=="pdf") plot(obj$x, obj$pdf ,type="l", ...)
  else if (dist=="cdf") plot(obj$x, obj$cdf ,type="l", ...)
}

.S3method("plotIH", "irwinhall", plotIH.irwinhall)

