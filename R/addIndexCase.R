#' Highlight index case at 40 Broad Street.
#'
#' @param cex Numeric. cex for point()
#' @param col Character. Color of point().
#' @param pch Numeric. Type of of point.
#' @param add.label Logical. Add text annotation: 40 Broad Street.
#' @param text.size Numeric. cex for text labels.
#' @return Add base R point and (optionally) text to a graphics plot.
#' @export
#' @examples
#' segmentLocator("216-1")
#' addIndexCase()

addIndexCase <- function(cex = 2, col = "red", pch = 1, add.label = FALSE,
  text.size = 0.5) {

  index.case <- cholera::fatalities[cholera::fatalities$case == 32, ]

  if (add.label) {
    text(index.case$x, index.case$y, labels = "40 Broad\nStreet",
      cex = text.size)
  }

  points(index.case$x, index.case$y, col = "red", cex = 2, pch = 1)
}
