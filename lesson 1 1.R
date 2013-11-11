## Ceater: Tewelde G.Hgaos
## Date: 06-11-2013
## The function creats map of a country
## Required input ISO country code
## defult is "KEN" and level 1
library (raster)
create_map <- function(country ="KEN", level=1){
  data <-raster::getData("GADM", country = country, level= level)
  plot(data, bg = "green", axes=T, col= "white")
  mtext(side = 3, line = 1, "ETHIOPIA ", cex = 1.2)
  mtext(side = 2, "Latitude", line = 2.5, cex=1.1)
  mtext(side = 1, "Longitude", line = 2.5, cex=1.1)
}
create_map("ETH", 0) # test 1 ETH