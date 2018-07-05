
#from stackoverflow (credit link)

#' Generate ggplot 2 colours
#'
#' @description Generates the ggplot2 colours so they can be used in other plots
#'
#' @param n number of colours
#'
#' @importFrom grDevices hcl
#'
#' @return
#' @export
#'
#' @examples
#' ggplot_color_hue(3)


ggplot_color_hue <- function(n) {
  hues = seq(15, 375, length = n + 1)
  hcl(h = hues, l = 65, c = 100)[1:n]
}
