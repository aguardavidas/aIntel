iris

library(ggplot2)

ggplot(data = iris) + 
  aes(x = Petal.Length, y = Petal.Width, shape = Species, size = Sepal.Width) +
# geom_point(colour = "red", size = 2)
  geom_point(alpha = 0.5) #transparencia

#esteticas que hemos definido

#forma: especie
#clor: rojo
#tamaño: 2

#posicion x: largo del petalo
#posicion y: ancho del petalo

ggplot(data = iris) + 
  aes(x = Petal.Length, y = Petal.Width, color = Species, shape = Species) +
  geom_point() 

#Mapeando la estetica del color a una variable continua

ggplot(data = iris) + 
  aes(x = Petal.Length, y = Petal.Width, color = Sepal.Width) +
  geom_point(size = 3) + 
  scale_color_gradient(low = "yellow", high = "red") +
  theme_bw() # para que el fondo sea blanco y negro


ggplot(data = iris) + 
  aes(x = Petal.Length, y = Petal.Width, color = Sepal.Width) +
  geom_point(size = 3) + 
  scale_x_continuous(breaks = seq(0,10,2),
                     limits = c(0,8)) +
  scale_y_continuous()



data ("msleep")

ggplot(data = msleep) + 
  aes(x = bodywt, y = brainwt) +
  geom_point() +
  geom_label(aes(label = name)) +
  scale_x_log10() +
  scale_y_log10()


#### Apunte 8 Visualizaciones para cada ocasión

paquetes <-
  c("tidyverse", "cowplot", "ggridges", "ggbeeswarm", "GGally", "plotly",
    "treemapify", "car", "vcd", "colorspace", "ggcleveland", "corrplot", "readxl",
    "lubridate", "gganimate", "gapminder", "forcats", "janitor", "ggforce",
    "ggalluvial")

# Instalar los que no están
instalados <- paquetes %in% rownames(installed.packages())
if (any(instalados == FALSE)) {
  install.packages(paquetes[!instalados])
}

# Cargarlos a todos juntos
invisible(lapply(paquetes, library, character.only = TRUE))


