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
genecards <- read.csv('./data/genecards_celiac_and_duodenum.csv',TRUE)
ctd <- read.csv("./data/ctd_celiac_simple.csv",TRUE)
ncbi <- read.csv("./data/ncbi_celiac.csv",TRUE)
genecards_new <- genecards[ , c("Gene")]
ctd_new <- ctd[ , c("Gene")]
ncbi_new <- ncbi[ , c("Gene")]


# Load library
# library(VennDiagram)




myCol <- brewer.pal(3, "Pastel2")

# Chart
venn.diagram(
  x = list(genecards_new,ctd_new,ncbi_new),
  category.names = c("Genecards" , "CTD", "NCBI"),
  filename = './Images/venn_diagram.png',
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

