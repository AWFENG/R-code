####公众号:医学学霸帮####

####公众号:医学学霸帮####


#install.packages("corrplot")


library(corrplot)           
inputFile="input.txt"       
setwd("D:\\biowolf\\bioR\\23.corrplot") 

rt=read.table(inputFile,sep="\t",header=T,row.names=1)      #读取文件
rt=t(rt)      #数据转置
M=cor(rt)     #相关型矩阵

#绘制相关性图形
pdf(file="corpot1.pdf",width=7,height=7)
corrplot(M,
         method = "circle",
         order = "hclust", #聚类
         type = "upper",
         col=colorRampPalette(c("green", "white", "red"))(50)
         )
dev.off()

#第二个图
pdf(file="corpot2.pdf",width=8,height=8)
corrplot(M,
         order="original",
         method = "color",
         number.cex = 0.7, #相关系数
         addCoef.col = "black",
         diag = TRUE,
         tl.col="black",
         col=colorRampPalette(c("blue", "white", "red"))(50))
dev.off()

