
#from stackoverflow (credit link)

#' Generate ggplot 2 colours
#'
#' @description Generates the ggplot2 colours so they can be used in other plots. Solution taken from https://stackoverflow.com/questions/8197559/emulate-ggplot2-default-color-palette/8197703#8197703 and added to this package for easy personal use.
#'
#' @param n number of colours
#'
#' @importFrom grDevices hcl
#'
#' @return
#' @export
#'
#' @examples
#' ggplot_colors(3)


ggplot_colors <- function(n) {
  hues = seq(15, 375, length = n + 1)
  hcl(h = hues, l = 65, c = 100)[1:n]
}
