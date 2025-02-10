read_deeptools <- function(dt_out = a)
{
  
  dt_temp <- t(dt_out)
  return(data.frame(dt_temp))
}

TSS <- read_deeptools(dt_out = read.table("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/H3K27ac_TSS_WT.txt", skip = 3))

TSS[, 1]

TSS0 <- TSS[1:2,]
TSS90 <- TSS[3:4,]


TSS0_sum <- apply(TSS0, 2, sum)
TSS90_sum <- apply(TSS90, 2, sum)


start <- round(sum(TSS0_sum == 0), digits = -2)


#pdf("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/090_H3K27ac_TSS_WT.pdf", pointsize = 9, width = 3, height = 2.25)

par(mar = c(2.1, 4.1, 2.1, 2.1))

plot(log2(TSS0_sum), 
     type = "l", 
     col = "#F8766D",
     las = 1,
     ylab = "",
     xlab = "",
     ylim = c(-1, 20),
     xlim = c(start, 20000),
     xaxt = "n", 
     yaxs = "i", 
     yaxt = "n",
     xaxs = "i",
     frame.plot = F)

for(i in 1:length(TSS0_sum))
{

  points(y = c(log2(TSS0_sum[i]), log2(TSS90_sum[i])),
         x = c(i, i),
        col = "#7CAE00", 
        type = "l")  
  
}

points(log2(TSS0_sum), 
       type = "l", 
       col = "#F8766D", 
       lwd = 2)

title(ylab = "CPM, log2", line = 1.5)

axis(side = 1, 
     at = c(start, 20000), 
     labels = c("", ""), 
     lwd = 1,
     gap.axis = 0,
     tck = -0.04,
     padj = -0.5)
axis(side = 2, 
     at = c(-1, 0, 10, 20), 
     labels = c(-1, 0, 10, 20), 
     lwd = 1, 
     las = 2,
     tck = -0.04,
     hadj = 0.75)

dev.off()




TSS <- read_deeptools(dt_out = read.table("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/H3K27ac_TSS_KI.txt", skip = 3))

TSS[, 1]

TSS0 <- TSS[1:2,]
TSS90 <- TSS[3:4,]


TSS0_sum <- apply(TSS0, 2, sum)
TSS90_sum <- apply(TSS90, 2, sum)


start <- round(sum(TSS0_sum == 0), digits = -2)


#pdf("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/090_H3K27ac_TSS_KI.pdf", pointsize = 9, width = 3, height = 2.25)

par(mar = c(2.1, 4.1, 2.1, 2.1))

plot(log2(TSS0_sum), 
     type = "l", 
     col = "#00BFC4",
     las = 1,
     ylab = "",
     xlab = "",
     ylim = c(-1, 20),
     xlim = c(start, 20000),
     xaxt = "n", 
     yaxs = "i", 
     yaxt = "n",
     xaxs = "i",
     frame.plot = F)

for(i in 1:length(TSS0_sum))
{
  
  points(y = c(log2(TSS0_sum[i]), log2(TSS90_sum[i])),
         x = c(i, i),
         col = "#C77CFF", 
         type = "l")  
  
}

points(log2(TSS0_sum), 
       type = "l", 
       col = "#00BFC4", 
       lwd = 2)

title(ylab = "CPM, log2", line = 1.5)

axis(side = 1, 
     at = c(start, 20000), 
     labels = c("", ""), 
     lwd = 1,
     gap.axis = 0,
     tck = -0.04,
     padj = -0.5)
axis(side = 2, 
     at = c(-1, 0, 10, 20), 
     labels = c(-1, 0, 10, 20), 
     lwd = 1, 
     las = 2,
     tck = -0.04,
     hadj = 0.75)

dev.off()






