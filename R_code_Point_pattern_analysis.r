> install.packages("spatstat")
Installing package into ‘C:/Users/Alessandro/Documents/R/win-library/4.0’
(as ‘lib’ is unspecified)
--- Please select a CRAN mirror for use in this session ---
provo con l'URL 'https://cran.mirror.garr.it/CRAN/bin/windows/contrib/4.0/spatstat_1.64-1.zip'
Content type 'application/zip' length 16933262 bytes (16.1 MB)
downloaded 16.1 MB

package ‘spatstat’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
        C:\Users\Alessandro\AppData\Local\Temp\RtmpCua8ku\downloaded_packages
> library(spatstat)
Carico il pacchetto richiesto: spatstat.data
Carico il pacchetto richiesto: nlme
Carico il pacchetto richiesto: rpart

spatstat 1.64-1       (nickname: ‘Help you I can, yes!’) 
For an introduction to spatstat, type ‘beginner’ 


Note: spatstat version 1.64-1 is out of date by more than 9 months; we recommend upgrading to the latest version.
> beginner
> setwd("C:/lab/")
> covid
Errore: oggetto "covid" non trovato
> covid<-read.table("covid_agg.csv", header=TRUE)
> #let's make a planar point pattern
> attach(covid)
> #x,y,ranges
> covid_planar<-ppp(lon,lat,c(-180,180),c(-90,90))
> density_map<-density(covid_planar)
> plot(density_map)
> points(density_map)
Error in xy.coords(x, y) : 
  'x' is a list, but does not have components 'x' and 'y'
> points(covid_planar)
> cl<-colorRampPalette(c('yellow','orange','red'))(100)
> plot(denisty_map,col=cl)
Error in plot(denisty_map, col = cl) : oggetto "denisty_map" non trovato
> plot(density_map,col=cl)
> points(covid_planar)
>  cl<-colorRampPalette(c('yellow','orange','red', 'blue', 'magenta'))(100)
> plot(density_map,col=cl)
> points(covid_planar)
> #putting the countries on the map
> install.packages("rgdal")


package ‘rgdal’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
        C:\Users\Alessandro\AppData\Local\Temp\RtmpCua8ku\downloaded_packages
> head(covid)
  cat             country cases       lat        lon
1   1         Afghanistan    21  33.83890  66.026530
2   2             Albania    51  41.14596  20.069178
3   3             Algeria    49  28.16336   2.632366
4   4             Andorra    14  42.54858   1.575688
5   5 Antigua and Barbuda     1  17.28014 -61.791128
6   6           Argentina    56 -35.37667 -65.167485
> coastlines<-readOGR("ne_10m_coastline.shp")
Error in readOGR("ne_10m_coastline.shp") : 
  non trovo la funzione "readOGR"
> library(rgdal)
Carico il pacchetto richiesto: sp
rgdal: version: 1.5-23, (SVN revision 1121)
Geospatial Data Abstraction Library extensions to R successfully loaded
Loaded GDAL runtime: GDAL 3.2.1, released 2020/12/29
Path to GDAL shared files: C:/Users/Alessandro/Documents/R/win-library/4.0/rgdal/gdal
GDAL binary built with GEOS: TRUE 
Loaded PROJ runtime: Rel. 7.2.1, January 1st, 2021, [PJ_VERSION: 721]
Path to PROJ shared files: C:/Users/Alessandro/Documents/R/win-library/4.0/rgdal/proj
PROJ CDN enabled: FALSE
Linking to sp version:1.4-5
To mute warnings of possible GDAL/OSR exportToProj4() degradation,
use options("rgdal_show_exportToProj4_warnings"="none") before loading rgdal.
Overwritten PROJ_LIB was C:/Users/Alessandro/Documents/R/win-library/4.0/rgdal/proj
> coastlines<-readOGR("ne_10m_coastline.shp")
OGR data source with driver: ESRI Shapefile 
Source: "C:\lab\ne_10m_coastline.shp", layer: "ne_10m_coastline"
with 4133 features
It has 3 fields
Integer64 fields read as strings:  scalerank 
>  plot(density_map,col=cl)
> > points(covid_planar)
Errore: unexpected '>' in ">"
> points(covid_planar)
> plot(coastlines,add=TRUE)
> cl<-colorRampPalette(c('pink','green','orange', 'red', 'magenta'))(100)
> plot(density_map,col=cl)
> points(covid_planar)
> plot(coastlines,add=TRUE)
> #change the points

> plot(coastlines,add=TRUE)
> plot(density_map,col=cl)
> points(covid_planar, pch=19, cex=0.5)
> plot(coastlines,add=TRUE)
> dev.off()
null device 
          1 
