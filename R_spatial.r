rary(sp)
> data(meuse)
> 
> head(meuse)
       x      y cadmium copper lead zinc  elev       dist   om ffreq soil lime
1 181072 333611    11.7     85  299 1022 7.909 0.00135803 13.6     1    1    1
2 181025 333558     8.6     81  277 1141 6.983 0.01222430 14.0     1    1    1
3 181165 333537     6.5     68  199  640 7.800 0.10302900 13.0     1    1    1
4 181298 333484     2.6     81  116  257 7.655 0.19009400  8.0     1    2    0
5 181307 333330     2.8     48  117  269 7.480 0.27709000  8.7     1    2    0
6 181390 333260     3.0     61  137  281 7.791 0.36406700  7.8     1    2    0
  landuse dist.m
1      Ah     50
2      Ah     30
3      Ah    150
4      Ga    270
5      Ah    380
6      Ga    470
> coordinates(meuse) = ~x+y
> plot(meuse)
> spplot(meuse, "zinc")
> spplot(meuse, "zinc", main="Concentration of zinc")
> spplot(meuse, "copper")
Warning messages:
1: unable to open printer 
2: opening device failed 
> spplot(meuse, "copper", "zinc")
Error in multiple && !outer : invalid 'x' type in 'x && y'
> spplot(meuse [,"copper", "zinc"]
+ spplot(meuse [,"copper", "zinc"]:
Errore: unexpected symbol in:
"spplot(meuse [,"copper", "zinc"]
spplot"
> spplot(meuse, c("copper", "zinc"))
> bubble(meuse, "zinc")
> bubble(meuse, "lead")
Error in UseMethod("depth") : 
  no applicable method for 'depth' applied to an object of class "NULL"
Error in grid.Call.graphics(C_setviewport, vp, TRUE) : 
  cannot pop the top-level viewport ('grid' and 'graphics' output mixed?)
Error in grid.Call.graphics(C_upviewport, as.integer(n)) : 
  cannot pop the top-level viewport ('grid' and 'graphics' output mixed?)
> > > > 
> bubble(meuse, "lead", col=red)
Error in bubble(meuse, "lead", col = red) : oggetto "red" non trovato
> bubble(meuse, "lead", col"red")
Errore: unexpected string constant in "bubble(meuse, "lead", col"red""
> bubble(meuse, "lead", col="red")
> 
> library(ggplot2)
> 
> #ecological dataframe construction
> #biofuels
> 
> 
> biofuels <- c(120, 200, 350, 570, 750)
> 
> oxydative <- c(1200, 1300, 21000, 34000, 50000)
> 
> biofuels
[1] 120 200 350 570 750
> oxydative
[1]  1200  1300 21000 34000 50000
> d<- data.frame(biofuels, oxydative)
> d
  biofuels oxydative
1      120      1200
2      200      1300
3      350     21000
4      570     34000
5      750     50000
> ggplot(d, aes(x=biofuels,y=oxydative))
> ggplot(d, aes(x=biofuels,y=oxydative)) + geom_point()
> ggplot(d, aes(x=biofuels,y=oxydative)) + geom_point(size=5.col="red")
Errore: unexpected symbol in "ggplot(d, aes(x=biofuels,y=oxydative)) + geom_point(size=5.col"
> ggplot(d, aes(x=biofuels,y=oxydative)) + geom_point(size=5,col="red")
> 
> #lines
> ggplot(d, aes(x=biofuels,y=oxydative)) + geom_line()
> #all
> ggplot(d, aes(x=biofuels,y=oxydative)) + geom_point(size=5,col="red")+geom_line()
> #poligons
> ggplot(d, aes(x=biofuels,y=oxydative)) + geom_polygon()
> 
> ##############IMPORT DATA FROM AN EXTERNAL DIRECTORY
> setwd("C:/lab/")
wd("C:/lab/")
> covid
Errore: oggetto "covid" non trovato
> covid<-read.table("covid_agg.csv", header=TRUE)
> covid

> head(covid)
  cat             country cases       lat        lon
1   1         Afghanistan    21  33.83890  66.026530
2   2             Albania    51  41.14596  20.069178
3   3             Algeria    49  28.16336   2.632366
4   4             Andorra    14  42.54858   1.575688
5   5 Antigua and Barbuda     1  17.28014 -61.791128
6   6           Argentina    56 -35.37667 -65.167485
> covid

> summary(covid)
      cat           country              cases              lat         
 Min.   :  1.00   Length:152         Min.   :    1.0   Min.   :-41.837  
 1st Qu.: 38.75   Class :character   1st Qu.:    4.0   1st Qu.:  7.878  
 Median : 76.50   Mode  :character   Median :   24.5   Median : 25.668  
 Mean   : 76.50                      Mean   : 1135.7   Mean   : 24.027  
 3rd Qu.:114.25                      3rd Qu.:  133.2   3rd Qu.: 43.965  
 Max.   :152.00                      Max.   :81116.0   Max.   : 64.998  
      lon         
 Min.   :-149.57  
 1st Qu.: -10.48  
 Median :  15.28  
 Mean   :  11.55  
 3rd Qu.:  43.97  
 Max.   : 171.60  
> #ggplot2 for graphs
> #ggplot(covid, aes(x=lon,y=lat)) + geom_point()
> library(ggplot2)
> ggplot(covid, aes(x=lon,y=lat)) + geom_point()
> #change the size of data
> ggplot(covid, aes(x=lon,y=lat,size=cases)) + geom_point()
