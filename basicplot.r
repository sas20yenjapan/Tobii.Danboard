#基礎プロット
install.packages("GGally")
library(GGally)


#属性プロット

for (i in 2:length(att)){
  png(paste("att",i-1,".png",sep=""), width=1280, height=1024)
  hist(att[,i])
  dev.off()
}

#eyetrackingプロット
png("dur.png", width=1280, height=1024)
ggpairs(na.omit(dur[,-1])) #duration
dev.off()

png("cou.png", width=1280, height=1024)
ggpairs(na.omit(cou[,-1])) #count
dev.off()

png("ttf.png", width=1280, height=1024)
ggpairs(na.omit(ttf[,-1])) #time to fixiation
dev.off()
###下記を参考
# airquality$Month <- as.factor(airquality$Month)
# airquality <- airquality[, colnames(airquality) != "Day"]
# ggpairs(na.omit(airquality), 
#         lower=list(continuous="smooth"), colour="Month", 
#         params=list(corSize=6,labelSize=10))

