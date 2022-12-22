#' Irwin-Hall distribution plot - generic method
#'
#' @param obj an object of irwinhall class
#' @param dist "pdf" for plotting probability density function, "cdf" for cumulative distribution function
#' @param ... other parameters for plot function
#'
#' @return nothing
#'
#' @seealso
#'
#' @examples
#' plotIH(irwinhall(5),dist="pdf")
#' plotIH(irwinhall(10),dist="cdf")
#' plotIH(irwinhall(15),dist="pdf",col="red")

#' @export
plotIH <- function(obj, dist = c("pdf", "cdf"), ...) {
  UseMethod("plotIH")
}


