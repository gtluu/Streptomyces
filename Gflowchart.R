library(diagram)
openplotmat()
# creates an empty plot with a title
openplotmat(main="Experimental Design")
# create the coordinates (used for the arrows and the boxes) my moves it down so there ir soom for the title
pos <-  coordinates (c(1, 1,1,1, 1,1,1,1,1,1,3), my = -0.1)
#straightarrow creates an arrow from one box to the next box
mid1<-straightarrow (from = pos[1, ], to = pos[3.5, ], lty = 1, lcol = 1)
mid2<-straightarrow(from = pos[3, ], to = pos[5.5, ],lty = 1, lcol = 1)
mid3<-straightarrow(from = pos[5, ], to = pos[7.5, ], lty = 1, lcol = 1)
mid4<-straightarrow(from = pos[7, ], to = pos[9.5, ], lty = 1, lcol = 1)
#boxlable are what goes into the boxes
boxlabel <- c("Streptomyces CP 26-58 
Raw Illumina Data","CP 26-58 
DNA contigs","CP 26-58 
Species ID","CP 26-58 
Whole Genome Sequence", "Potential Biosynthetic Gene Clusters
for Secondary Metebolites")
#my_text_size is the size of the text
my_text_size <- 1.5
# h is for horizontal length
h <- 0.2
# v is for vertical length
v<-0.05
#for loop to give the boxes color
for(i in 1:length(boxlabel)){
  if (i %in% 1:1){
    textrect(mid = pos[1,], radx = h, rady =v, lab = boxlabel[i], cex = my_text_size, box.col = "red")
  } else if (i %in% 2:2){
    textrect(mid = pos[3,], radx = h, rady = v, lab = boxlabel[i], cex = my_text_size, box.col = "orange")
  } else if (i %in% 3:3){
    textrect(mid = pos[5,], radx = h, rady = v, lab = boxlabel[i], cex = my_text_size, box.col = "yellow")
  } else if (i %in% 4:4){
    textrect(mid = pos[7,], radx = h, rady = v, lab = boxlabel[i], cex = my_text_size, box.col = "turquoise")
  }else {
    textrect(mid = pos[9,], radx = h, rady = v, lab = boxlabel[i], cex = my_text_size, box.col = "purple")
  }
}
#text adds the text by each arrow
text(mid1[1]+0.06, mid1[1]+.26, "Unicycler", cex = 1.5)
text(mid2[1]+0.08, mid2[2], "NCBI BLAST", cex = 1.5)
text(mid3[1]+0.06, mid3[2], "MeDuSa", cex = 1.5)
text(mid4[1]+0.07, mid4[2], "antiSMASH", cex = 1.5)


