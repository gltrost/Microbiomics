#Some code in this folder was taken from https://www.r-graph-gallery.com/14-venn-diagramm.html

#install.packages("tidyverse","hrbrthemes","tm","proustr", "VennDiagram", "RColorBrewer")

# Libraries
library(tidyverse)
library(hrbrthemes)
library(tm)
library(proustr)
library(VennDiagram)
library(RColorBrewer)

setwd("~/Microbiomics/Code")
set <- read.csv('./data/venn-diagram-input.csv')


# Load library
# library(VennDiagram)


# Generate 3 sets of 200 words
set1 <- set[ ,1]
set2 <- set[ ,2]
set3 <- set[ ,3]

myCol <- brewer.pal(3, "Pastel2")

# Chart
venn.diagram(
  x = list(set1, set2, set3),
  category.names = c("Set 1" , "Set 2 " , "Set 3"),
  filename = 'venn_diagramm.png',
  output=TRUE,
  # Output features
  imagetype="png" ,
  height = 480 , 
  width = 480 , 
  resolution = 300,
  compression = "lzw",
  
  # Circles
  lwd = 2,
  lty = 'blank',
  fill = myCol, 

  # Numbers
  cex = .6,
  fontface = "bold",
  fontfamily = "sans",
  
  # Set names
  cat.cex = 0.6,
  cat.fontface = "bold",
  cat.default.pos = "outer",
  cat.pos = c(-27, 27, 135),
  cat.dist = c(0.055, 0.055, 0.085),
  cat.fontfamily = "sans",
  rotation = 1
)

