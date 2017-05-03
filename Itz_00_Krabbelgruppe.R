########### . Everything that exists is an object. ###########
########### . Everything that happens is a function call.
########### - John Chambers
1+2
"+"(x=1,y=2)

########## Basic objects ############
#logical
a<-TRUE   #abgekürzt a<-T
b<-FALSE  #abgekürzt b<-F
a==b

#numeric
a<-10.123

#integer
b<-42L
b<-as.integer(42.9999) #Vorsicht!

#character
c<-"3*(schwarzer Kater)"

#factor
d<-as.factor(c("Hund", "Hund", "Katze", "Maus"))
as.numeric(d)
is.factor(d)


########### Arithmethische Operatoren 
1 + 2
3 - 4
5 * 6
7 / 8
9^10
11%%2 #Modulo

########### Logische Operatoren ############
1>2
1>=2
1<2
1<=2
1==2
1!=2
TRUE & FALSE #wahr UND  falsch? 
TRUE | FALSE #wahr ODER flasch?


1 %in% c(1,2,3)     # in 
4 %in% c(1,2,3)     # in
!1 %in% c(1,2,3)    # Not in


########### Vektoren ############
# Manuell
a<-c(1,2,3,4)
b<-c("Hund", "Katze", "Maus")

# Wiederholung
c<-rep(1,10)
c<-rep("Katze",10)
c<-rep(b,10)

# Sequenz
d<-0:10
e<-seq(1,5,0.1)
f<-seq(from=5,to=0,by=-0.1)

# Reihenfolge umkehren
g<-rev(x = f)

# Sortieren
sort(c(-7,1,3,-5,42))
sort(c(-7,1,3,-5,42), decreasing = TRUE)

########### Matritzen ############

a<-1:12
b<-matrix(a, nrow=4, byrow=T)
c<-matrix(a, nrow=4, byrow=F)
t(c)

colnames(b)<-c("Hund", "Katze", "Maus")
rownames(b)<-c("Hal", "lo", "We", "lt")


########### data.frames #########
df<-as.data.frame(b)
df$Doppelmaus<-df$Maus*2

############# Funktionsdefinitionen ############
myprint=function(text)
{
  print(text)
  return("Rückgabe von myprint")
}
a<-myprint("Hallo")

############# Funktionsaufrufe ############
print("Hallo Welt")
print(paste(Sys.Date(), "ist ein wunderschöner Tag"))
print(paste(Sys.Date(), "ist ein wunderschöner Tag"))
print(paste(format(Sys.Date(), format="%B %d %Y")))


############# In SAS Systemvariablen - hier Systemfunktionen ###########
Sys.Date()
Sys.time()
Sys.info()
Sys.info()["sysname"]
Sys.sleep(1) #### Zzzz...

############ Standardvariablen gibt es auch #############################
pi==3 #Hätte ja sein können...


######## Pipes (für Forgeschrittene) ######

# .........O....................MMMMMMMm  
# ........oOo.................MMMMM.       
# ........OOO................MMM              
# .........O...............MMMM                
# .......................MMMMM                
# ......MMMMMMMMM......MMMMMM                
# ......MMMMMMMMM.....OMMMMMM                  
# ......MMMMMMMMMM...MMMMMMM                   
# ......MMMMMMMMMMMMMMMMMMMM                   
# ......MMMMMMMMMMMMMMMMMMM.                   
# .......MMMMMMMMMMMMMMMMMM                     
# .......MMMMMMMMMMMMMMMMM                      
# .......MMMMMMMMMMMMMMMM                       
# .......,MMMMMMMMMMMMMM                        
# .........MMMMMMMMMMMM                         
# ...........MMMMMMM

#statt print(paste(format(Sys.Date(), format="%B %d %Y")))
library(magrittr)

a<-Sys.Date()%>%
  format( format="%d.%m.%Y") %>%
  paste("ist ein toller Tag") %>%
  print

