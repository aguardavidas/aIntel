# Notas AA 
# getwd() ver tu wd

setwd("C:/git/anInt")
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

theme_set(theme_bw())

datos <- read_csv("/20251017/partos_rosario.csv")


datos <- read_csv("partos_rosario.csv")
datos