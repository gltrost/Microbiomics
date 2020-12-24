#install.packages("tidyverse","hrbrthemes","tm","proustr", "VennDiagram", "RColorBrewer")
# install.packages("data.table","tidyr","dplyr","tidyverse","hrbrthemes","tm","proustr","VennDiagram")
# install.packages("RColorBrewer","data.table","dplyr","formattable","tidyr")


# Libraries
library(tidyverse)
library(hrbrthemes)
library(tm)
library(proustr)
library(VennDiagram)
library(RColorBrewer)
library(dplyr)
library(formattable)
library(tidyr)
  

genecards <- read.csv('~/Microbiomics/Code/data/genecards_celiac_and_duodenum.csv',TRUE)
ctd <- read.csv("~/Microbiomics/Code/data/ctd_celiac_simple.csv",TRUE)
ncbi <- read.csv("~/Microbiomics/Code/data/ncbi_celiac.csv",TRUE)
disgenet <- read.csv("~/Microbiomics/Code/data/disgenet_celiac_table.csv",TRUE)
genecards_new <- genecards[ , c("Gene")]
ctd_new <- ctd[ , c("Gene")]
ncbi_new <- ncbi[ , c("Symbol")]
disgen_new <- disgenet[ , c("Gene")]

 
intersect_1 <- intersect(genecards_new,ctd_new)
intersect_2 <- intersect(intersect_1,disgen_new)
intersect(intersect_2,ncbi_new)

print(cat(intersect_1))
# intersect(database_inter,disgen_new)

omim_table <- read.csv('./data/OMIM_Disease_table.csv',TRUE)

top_ten_omim_table <- omim_table[1:10, ]

formattable(top_ten_omim_table)


desgenet_table <- read.csv('./data/DisGeNET_table.csv',TRUE)

top_ten_disgenet_table <- desgenet_table[1:10,1:8]

formattable(top_ten_disgenet_table)

