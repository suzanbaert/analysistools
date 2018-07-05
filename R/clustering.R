#' Clustering - generate kmeans elbow plot
#'
#' @description Generate the elbow plot for a dataframe to understand the number of clusters requirement. Also called scree plot.
#'
#' @param data dataframe
#' @param kmax number of clusters to check
#'
#' @importFrom stats kmeans
#' @importFrom graphics plot
#'
#' @return
#' @export
#'
#' @examples
#' kmeans_elbow(iris[-5])


kmeans_elbow <- function(data, kmax = 10) {
  wss <- 0
  for (k in 1:kmax) {
    kmeans_output <- kmeans(data, centers=k, nstart=10)
    wss[k] <- kmeans_output$tot.withinss
  }
  plot(1:kmax, wss, type = "b", main = "Elbow plot", ylab = "total within-cluster sum of squares")
}




#' Clustering - generate silhouette plot
#'
#' @description Generate a plot to understand the number of clusters using the average silhouette width
#'
#' @param data dataframe
#' @param kmax number of clusters to check
#'
#' @importFrom cluster pam
#' @importFrom graphics plot
#'
#' @return
#' @export
#'
#' @examples
#' silhouette_plot(iris[-5])


silhouette_plot <- function(data, kmax = 10) {
  silwidth <- 0
  for (k in 2:kmax) {
    silh_output <- cluster::pam(data, k=k)
    silwidth[(k-1)] <- silh_output$silinfo$avg.width
  }
  plot(2:kmax, silwidth, type = "b", main = "Silhouette plot", ylab = "average silhouette width")
}
