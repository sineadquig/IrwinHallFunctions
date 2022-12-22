#' Plot Irwin-Hall distribution
#'
#' @param x an object of irwinhall class
#' @param dist "pdf" (default) for plotting probability density function, "cdf" for cumulative distribution function
#' @param ... other parameters for plot function
#'
#' @return nothing is returned; plot is produced
#'
#' @seealso \code{\link{irwinhall}}, \code{\link{dirwinhall}}, \code{\link{pirwinhall}}
#'
#' @examples
#' plot(irwinhall(5))
#' plot(irwinhall(10),dist="cdf")
#' plot(irwinhall(15),col="red")

#' @export
plot.irwinhall <- function(x, dist = c("pdf", "cdf"), ...) {
  dist <- match.arg(dist)
  if(dist=="cdf") plot(x$x, x$cdf ,type="l", ...)
  else plot(x$x, x$pdf ,type="l", ...)
}

.S3method("plot", "irwinhall", plot.irwinhall)

