#Streptomyces
setwd("/Applications/bioinf")

#reading in Gordans Data as a Csv file downloaded from BLAST called HitTable 
#(I put the names of the columns in mauneally)
Gdata<-read.csv("HitTable.csv")
#library dada.table helped me collect the max bitScore for each specfic queryId
library(data.table)
#SympData is a dataframe that contains only the 1st input with a specfic queryId
#This line of code creates a data table 
SympData<-as.data.table(Gdata)[, .SD[which.max(bitScore)], by=queryId]
#not sure what the SD[] does
#######################################################
#this checks how many different Id exist
CheckID<-as.data.table(SympData)[, .SD[which.max(bitScore)], by=subjectId]
#I looked up the ID's ang placed them into a for loop to name the strains found
#SympData$name creates a new column in the dataset to be used by the for loop
SympData$name=0

for (i in 1:nrow(SympData)){
  #tosee was a test
  if(SympData$subjectId[i]=="gi|1229103384|gb|CP017704.1|"){
    SympData$name[i]<-	"Bacillus simplex NBRC 15720"
  }
  if(SympData$subjectId[i]=="gi|1002180194|gb|CP011008.1|"){
    SympData$name[i]<-	"Bacillus simplex strain SH-B26"
  }
  if(SympData$subjectId[i]=="gi|1002180194|gb|CP011008.1|"){
    SympData$name[i]<-	"Bacillus simplex strain SH-B26"
  }
  if(SympData$subjectId[i]=="gi|330423615|gb|JF828091.1|"){
    SympData$name[i]<-	"Bacillus sp. NK2003"
  }
  if(SympData$subjectId[i]=="gi|822591927|gb|CP011492.1|"){
    SympData$name[i]<-	"Streptomyces sp. CNQ-509"
  }
  if(SympData$subjectId[i]=="gi|1027809468|emb|LT571449.1|"){
    SympData$name[i]<-	"Staphylococcus epidermidis isolate BPH0662"
  }
  if(SympData$subjectId[i]=="gi|324323994|gb|CP002508.1|"){
    SympData$name[i]<-	"Bacillus thuringiensis serovar finitimus YBT-020"
  }	
  if(SympData$subjectId[i]=="gi|1061038973|gb|CP017080.1|"){
    SympData$name[i]<-	"Bacillus muralis strain G25-68"
  }	
  if(SympData$subjectId[i]=="gi|320006635|gb|CP002475.1|"){
    SympData$name[i]<-	"Streptomyces pratensis ATCC 33331"
  }
  if(SympData$subjectId[i]=="gi|1153088090|gb|CP018627.1|"){
    SympData$name[i]<-	"Streptomyces hygroscopicus strain XM201"
  }
  if(SympData$subjectId[i]=="gi|1190833567|gb|CP021121.1|"){
    SympData$name[i]<-	"Streptomyces sp. SCSIO 03032"
  }
  if(SympData$subjectId[i]=="gi|1130049210|gb|CP018870.1|"){
    SympData$name[i]<-	"Streptomyces sp. TN58"
  }
  if(SympData$subjectId[i]=="gi|297153409|gb|CP002047.1|"){
    SympData$name[i]<-	"Streptomyces bingchenggensis BCW-1"
  }
  if(SympData$subjectId[i]=="gi|953778161|gb|CP013220.1|"){
    SympData$name[i]<-	"Streptomyces hygroscopicus subsp. limoneus strain KCTC 1717"
  }
  if(SympData$subjectId[i]=="gi|766900424|gb|CP010976.1|"){
    SympData$name[i]<-	"Paenibacillus sp. IHBB 10380"
  }
  if(SympData$subjectId[i]=="gi|1219745288|gb|CP022437.1|"){
    SympData$name[i]<-	"Virgibacillus necropolis strain LMG 19488"
  }	
  if(SympData$subjectId[i]=="gi|672712681|emb|HG813244.1|"){
    SympData$name[i]<-	"Staphylococcus epidermidis PM221"
  }	
  if(SympData$subjectId[i]=="gi|134265192|gb|CP000557.1|"){
    SympData$name[i]<-	"Geobacillus thermodenitrificans NG80-2"
  }	
  if(SympData$subjectId[i]=="gi|238632064|gb|FJ462704.1|"){
    SympData$name[i]<-	"Streptomyces longisporoflavus strain NCIMB 11426"
  }
  if(SympData$subjectId[i]=="gi|1163013148|gb|CP020085.1|"){
    SympData$name[i]<-	"[Haemophilus] parasuis strain CL120103"
  }
  if(SympData$subjectId[i]=="gi|1002184699|gb|CP011009.1|"){
    SympData$name[i]<-	"Bacillus simplex strain SH-B26"
  }
  if(SympData$subjectId[i]=="gi|1182081529|gb|CP020744.1|"){
    SympData$name[i]<-	"Bacillus mycoides strain Gnyt1"
  }
  if(SympData$subjectId[i]=="gi|484574986|gb|CP005586.1|"){
    SympData$name[i]<-	"Bacillus sp. 1NLA3E"
  }
  if(SympData$subjectId[i]=="gi|1115982363|emb|LT559118.1|"){
    SympData$name[i]<-	"Nonomuraea sp. ATCC 39727 isolate"
  }
  if(SympData$subjectId[i]=="gi|94467026|dbj|AB193609.1|"){
    SympData$name[i]<-	"Streptomyces sp. NRRL 11266"
  }
  if(SympData$subjectId[i]=="gi|1214725545|gb|CP022247.1|"){
    SympData$name[i]<-	"Staphylococcus epidermidis strain ATCC 12228"
  }	
  if(SympData$subjectId[i]=="gi|947251633|gb|CP009802.1|"){
    SympData$name[i]<-	"Streptomyces sp. FR-008"
  }	
  if(SympData$subjectId[i]=="gi|1250040000|gb|CP020741.1|"){
    SympData$name[i]<-	"Staphylococcus aureus strain HZW450"
  }
  if(SympData$subjectId[i]=="gi|1210235328|dbj|AP018290.1|"){
    SympData$name[i]<-	"Calothrix sp. NIES-4105"
  }
  if(SympData$subjectId[i]=="gi|1139690297|dbj|AP014956.1|"){
    SympData$name[i]<-	"Staphylococcus capitis"
  }
  if(SympData$subjectId[i]=="gi|1009287770|gb|CP014840.1|"){
    SympData$name[i]<-	"Bacillus subtilis subsp. globigii strain ATCC 49760"
  }	
  if(SympData$subjectId[i]=="gi|1201064755|gb|CP021671.1|"){
    SympData$name[i]<-	"Bacillus licheniformis strain SRCM100141"
  }	
  if(SympData$subjectId[i]=="gi|82658706|gb|DQ272520.1|"){
    SympData$name[i]<-	"Streptomyces aculeolatus"
  }
  if(SympData$subjectId[i]=="gi|971330038|gb|CP013743.1|"){
    SympData$name[i]<-	"Streptomyces sp. CdTB01"
  }
  if(SympData$subjectId[i]=="gi|1202278179|gb|MF062491.1|"){
    SympData$name[i]<-	"Staphylococcus epidermidis strain M13/0453"
  }
  if(SympData$subjectId[i]=="gi|1086024185|emb|LT629791.1|"){
    SympData$name[i]<-	"Jiangella alkaliphila strain DSM 45079"
  }
  if(SympData$subjectId[i]=="gi|758855033|gb|CP010849.1|"){
    SympData$name[i]<-	"Streptomyces cyaneogriseus subsp"
  }
  if(SympData$subjectId[i]=="gi|760489133|gb|CP010942.1|"){
    SympData$name[i]<-	"Staphylococcus epidermidis strain 949_S8"
  }
  if(SympData$subjectId[i]=="gi|1206216038|gb|CP021780.1|"){
    SympData$name[i]<-	"Paenibacillus donghaensis strain KCTC 13049"
  }
  if(SympData$subjectId[i]=="gi|385656215|gb|JQ432566.1|"){
    SympData$name[i]<-	"Streptomyces sp. WT3"
  }
  if(SympData$subjectId[i]=="gi|1273833141|gb|CP024437.1|"){
    SympData$name[i]<-	"Staphylococcus epidermidis strain SE95"
  }	
  if(SympData$subjectId[i]=="gi|1127871679|gb|CP018842.1|"){
    SympData$name[i]<-	"Staphylococcus epidermidis strain 14.1.R1"
  }	
  if(SympData$subjectId[i]=="gi|27316893|gb|AE015931.1|"){
    SympData$name[i]<-	"Staphylococcus epidermidis ATCC 12228"
  }	
  if(SympData$subjectId[i]=="gi|1219760292|gb|CP022433.1|"){
    SympData$name[i]<-	"Streptomyces pluripotens strain MUSC 137"
  }	
  if(SympData$subjectId[i]=="gi|1243922733|emb|LT907981.1|"){
    SympData$name[i]<-	"Streptomyces sp. 2323.1"
  }
  if(SympData$subjectId[i]=="gi|1167021723|gb|CP020352.1|"){
    SympData$name[i]<-	"Bacillus paralicheniformis strain MDJK30"
  }	
  if(SympData$subjectId[i]=="gi|1267040928|gb|CP023967.1|"){
    SympData$name[i]<-	"Staphylococcus capitis strain FDAARGOS_378"
  }	
  if(SympData$subjectId[i]=="gi|1273823345|gb|CP024408.1|"){
    SympData$name[i]<-	"Staphylococcus epidermidis strain SE90"
  }	
  if(SympData$subjectId[i]=="gi|1052260393|emb|LT607410.1|"){
    SympData$name[i]<-	"Micromonospora purpureochromogenes strain DSM 43821"
  }
  if(SympData$subjectId[i]=="gi|691218329|gb|CP009046.1|"){
    SympData$name[i]<-	"Staphylococcus epidermidis strain SEI"
  }	
  if(SympData$subjectId[i]=="gi|311893446|dbj|AP010968.1|"){
    SympData$name[i]<-	"Kitasatospora setae KM-6054"
  }	
  if(SympData$subjectId[i]=="gi|1015637220|gb|CP015098.1|"){
    SympData$name[i]<-	"Streptomyces sp. S10(2016)"
  }
  if(SympData$subjectId[i]=="gi|719642273|gb|CP009746.1|"){
    SympData$name[i]<-	"Bacillus weihenstephanensis strain WSBC 10204"
  }
  if(SympData$subjectId[i]=="gi|1267053233|gb|CP023971.1|"){
    SympData$name[i]<-	"Staphylococcus lugdunensis strain FDAARGOS_381"
  }
  if(SympData$subjectId[i]=="gi|753704065|gb|CP009649.1|"){
    SympData$name[i]<-	"Bacillus mycoides strain BTZ"
  }
  if(SympData$subjectId[i]=="gi|1039805774|gb|CP016082.1|"){
    SympData$name[i]<-	"Streptomyces sp. SAT1 "
  }	
  if(SympData$subjectId[i]=="gi|841332193|emb|LN866850.1|"){
    SympData$name[i]<-	"Staphylococcus capitis CR01"
  }	
  if(SympData$subjectId[i]=="gi|9624290|gb|AF270376.1|AF270376"){
    SympData$name[i]<-	"Staphylococcus epidermidis strain SR1"
  }	
  if(SympData$subjectId[i]=="gi|1163018612|gb|CP020105.1|"){
    SympData$name[i]<-	"Spirosoma rigui strain KCTC 12531"
  }	
  if(SympData$subjectId[i]=="gi|178462309|dbj|AP009493.1|"){
    SympData$name[i]<-	"Streptomyces griseus subsp. griseus NBRC 13350"
  }
  if(SympData$subjectId[i]=="gi|1175678048|gb|CP020567.1|"){
    SympData$name[i]<-	"Kitasatospora aureofaciens strain DM-1"
  }	
  if(SympData$subjectId[i]=="gi|9623774|gb|AF269874.1|AF269874"){
    SympData$name[i]<-	"Staphylococcus epidermidis strain SR1"
  }	
  if(SympData$subjectId[i]=="gi|703587290|gb|CP009754.1|"){
    SympData$name[i]<-	"Streptomyces sp. CCM_MD2014"
  }	
  if(SympData$subjectId[i]=="gi|751869240|dbj|LC006086.1|"){
    SympData$name[i]<-	"Streptomyces versipellis"
  }	
  if(SympData$subjectId[i]=="gi|1061232702|gb|CP017097.1|"){
    SympData$name[i]<-	"Staphylococcus aureus subsp.aureus"
  }	
  if(SympData$subjectId[i]=="gi|1052680350|emb|LT607753.1|"){
    SympData$name[i]<-	"Micromonospora coxensis strain DSM 45161"
  }	
  if(SympData$subjectId[i]=="gi|1239643078|gb|CP017069.2|"){
    SympData$name[i]<-	"Staphylococcus lugdunensis strain Klug93G-4"
  }	
  if(SympData$subjectId[i]=="gi|1231687478|emb|LT906447.1|"){
    SympData$name[i]<-	"Staphylococcus piscifermentans strain NCTC13836"
  }	
  if(SympData$subjectId[i]=="gi|1268137839|dbj|LC330869.1|"){
    SympData$name[i]<-	"Streptomyces lavendulae FRI-5"
  }	
  if(SympData$subjectId[i]=="gi|1150313618|gb|CP007699.2|"){
    SympData$name[i]<-	"Streptomyces lydicus strain A02"
  }	
  if(SympData$subjectId[i]=="gi|344313278|gb|CP002993.1|"){
    SympData$name[i]<-	"Streptomyces sp. SirexAA-E"
  }	
  if(SympData$subjectId[i]=="gi|1154270993|gb|CP016791.1|"){
    SympData$name[i]<-	"Bacillus flexus strain KLBMP 4941"
  }
  if(SympData$subjectId[i]=="gi|1051494615|gb|CP011533.1|"){
    SympData$name[i]<-	"Streptomyces noursei ATCC 11455"
  }
  if(SympData$subjectId[i]=="gi|830323356|gb|CP011802.1|"){
    SympData$name[i]<-	"Bacillus atrophaeus UCMB-5137"
  }

}
#counts= counts the names in the dataset
counts <- table(SympData$name)
#I gave each enrtry its own color
color<-c("aliceblue", "antiquewhite", "aquamarine2", "bisque","black","blue4","blueviolet","brown","brown1","burlywood2","cadetblue1","cadetblue4","chartreuse1","chartreuse4","chocolate1","chocolate3","coral1","coral3","cornsilk2","cyan","cyan3","darkcyan","darkgoldenrod1","darkgoldenrod3","darkgreen","darkmagenta","darkolivegreen","darkolivegreen1","darkolivegreen3","darkorange1","darkorchid","darkorchid3","darkred","darksalmon","darkseagreen1","darkslateblue","darkslategray1","darkviolet","darkturquoise","deeppink4","deepskyblue1","deepskyblue1","firebrick","forestgreen","gold","dodgerblue4","lavender","lavenderblush3","green3","hotpink","hotpink4","indianred1","indianred3","ivory2","khaki","lightpink2","lightcyan1","lightcoral","lightseagreen","mediumorchid3","lightskyblue2","mediumpurple3","mediumseagreen","lightslateblue","mediumvioletred","midnightblue","mistyrose1","magenta2","maroon","olivedrab","orange","mediumorchid","palegreen","royalblue1","blue","green")
# par moves the margens for the barplot so that the names will fit
par(mar=c(13,6,4,1)+.1)
#basic barplat except las =2 puts the names on the bottom
barplot(counts,  col=color,main="Abundance of Bacteria",  xlab="", axes=TRUE,cex.names = 0.5, ylab="Abundance", las=2)
# Adds the xaxis under the names of the bacteria
mtext("Bacteria", side=1, line = 11., las=1.)

#Ok and see find the most popular names from the count
#ok<-as.data.frame(counts)
#used see to see how whcih names appered 2 or more times
#see<-subset(ok, Freq>=2)
#longdata is a data set that contains all the names of bateria that were found 2 or more times
longdata <- subset(SympData, name=="Streptomyces sp. CNQ-509"|name=="Bacillus simplex NBRC 15720"|name=="Bacillus simplex strain SH-B26"|name=="Staphylococcus epidermidis strain 14.1.R1"|
                     name=="Staphylococcus epidermidis strain ATCC 12228"|name=="Staphylococcus epidermidis strain SE95"|name=="Streptomyces aculeolatus"|
                     name=="Geobacillus thermodenitrificans NG80-2"|name=="Kitasatospora setae KM-6054"|name=="Staphylococcus epidermidis strain SEI"|name=="Staphylococcus epidermidis strain SR1"|name=="Streptomyces sp. CdTB01"|name=="Streptomyces bingchenggensis BCW-1"|name=="Staphylococcus epidermidis strain 949_S8"|name=="Streptomyces sp. WT3"|name=="Streptomyces hygroscopicus strain XM201"|name=="Staphylococcus epidermidis strain SE90"|
                     name=="Streptomyces longisporoflavus strain NCIMB 11426")
#counts= counts the names in the dataset
counts2 <- table(longdata$name)
# par moves the margens for the barplot so that the names will fit
par(mar=c(13,6,4,1)+.1)
#basic barplat except las =2 puts the names on the bottom
barplot(counts2,  col=color,main="Top Species IDs from BLAST Alignment",  xlab="", axes=TRUE,cex.names = 0.5, ylab="Frequency", las=2)
# Adds the xaxis under the names of the bacteria
mtext("Species Name", side=1, line = 11., las=1.)


# making the graph simpler less different types 10 or more
shortdata <- subset(SympData, name=="Streptomyces sp. CNQ-509"|name=="Bacillus simplex NBRC 15720"|name=="Bacillus simplex strain SH-B26"|name=="Staphylococcus epidermidis strain 14.1.R1"|name=="Staphylococcus epidermidis strain ATCC 12228"|name=="Staphylococcus epidermidis strain SE95"|name=="Streptomyces aculeolatus")
#counts= counts the names in the dataset
counts3 <- table(shortdata$name)
# par moves the margens for the barplot so that the names will fit
par(mar=c(13,6,4,1)+.1)
#basic barplat except las =2 puts the names on the bottom
barplot(counts3,  col=color,main="Abundance of Bacteria",  xlab="", axes=TRUE,cex.names = 0.6, ylab="Abundance", las=3)
# Adds the xaxis under the names of the bacteria
mtext("Bacteria", side=1, line = 11.5, las=1.)




#putting the graphs together 
#mfrow = c(1:2) puts two graphs together on the same row
par(mfrow = c(1:2),mar=c(13,6,4,1)+.1)
#bar plots
barplot(counts,  col=color,main="Abundance of Bacteria",  xlab="", axes=TRUE,cex.names = 0.5, ylab="Abundance", las=2)
barplot(counts2,  col=color,main="Abundance of Bacteria",  xlab="", axes=TRUE,cex.names = 0.5, ylab="Abundance", las=2)
barplot(counts3,  col=color,main="Abundance of Bacteria",  xlab="", axes=TRUE,cex.names = 0.5, ylab="Abundance", las=2)


#method to put names into data frame takes a long time and uses the package ape

library(ape)
speciesnames <- read.GenBank(SympData$seqid, seq.names=SympData$seqid, species.names=TRUE, gene.names=FALSE, as.character=FALSE)
attr(names, "species")

