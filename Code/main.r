#main.r, currently filled with play-code as I learn R

#complementary DNA "TGCCCACCCACCCTTA"
DNAseq <- function(x){
  basepair=c("A","T","G","C")
  abc <- unlist(strsplit(toupper(x),NULL))
  paste(unlist(lapply(abc,function(DNAseq){
    if(DNAseq=="A") stringss<-"T"
    if(DNAseq=="T") stringss<-"A"
    if(DNAseq=="C") stringss<-"G"
    if(DNAseq=="G") stringss<-"C"
    if(!DNAseq%in%basepair) stringss<-"N"
  return(stringss)
  })), collapse = )
}

DNAseq("AAACCCGGGTTTYYY")
