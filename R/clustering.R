kmeans_elbow <- function(data, kmax = 10) {
  wss <- 0
  for (k in 1:kmax) {
    kmeans_output <- kmeans(mean_agg_data[-1], centers=k, nstart=10)
    wss[k] <- kmeans_output$tot.withinss
  }
  plot(1:kmax, wss, type = "b", main = "Elbow plot")
}




silhouette_clusters <- function(data, kmax = 10) {
  silwidth <- 0
  for (k in 2:kmax) {
    silh_output <- cluster::pam(mean_agg_data[-1], k=k)
    silwidth[(k-1)] <- silh_output$silinfo$avg.width
  }
  plot(2:kmax, silwidth, type = "b", main = "Silhouette plot")
}
