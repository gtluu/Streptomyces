#final graph
setwd("/Applications/bioinf")
#data from antiSMASH
geneclusters<-read.csv("geneclusters.csv")
metaboliteclusters<-read.csv("metaboliteclusters.csv")
#ggplot 2 is need to use the ggplot function
library(ggplot2)
#gridExtra is needed to use the grid.arrange function whihc puts two grids side by side
library(gridExtra)
#fixing the number in the geneclusters and metaboliteclusters dataframe to include a 0 before the number
geneclusters[1, 1] = "01"
geneclusters[2, 1] = "02"
geneclusters[3, 1] = "03"
geneclusters[4, 1] = "04"
geneclusters[5, 1] = "05"
geneclusters[6, 1] = "06"
geneclusters[7, 1] = "07"
geneclusters[8, 1] = "08"
geneclusters[9, 1] = "09"
metaboliteclusters[1, 1] = "08"
metaboliteclusters[2, 1] = "09"

#combining the number column with the name column to have the names in numerical order
geneclusters$new <- paste(geneclusters$Cluster,geneclusters$Gene.Cluster.Type)
metaboliteclusters$new <- paste(metaboliteclusters$Cluster,metaboliteclusters$Gene.Cluster.Type)

# creating the graphs using ggplot called p and q
p <-ggplot(geneclusters, aes(new, Percent.Similarity))+geom_bar(stat = "identity")+ggtitle("hi")+ 
  labs(title = "Percent Similarity Between All Sample and Known Biosynthetic Gene Clusters")+
  ylab("Percent Similarity")+
  xlab("Types of Gene Clusters")+
  theme(axis.text.x=element_text(angle=90,hjust=1,vjust=0.5),legend.position='none')
q <-ggplot(metaboliteclusters, aes(new, Percent.Similarity))+
  labs(title = "Percent Similarity Between Sample and Known PKS/NRPS/Terpene Clusters")+
  ylab("Percent Similarity")+
  xlab("Types of Gene Clusters")+
  geom_bar(stat = "identity")+
  theme(axis.text.x=element_text(angle=90,hjust=1,vjust=0.5), legend.position='none')
# puts the two plots side by side
grid.arrange(p,q, ncol=2)
