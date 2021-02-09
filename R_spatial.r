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
