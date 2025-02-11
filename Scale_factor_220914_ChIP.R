#Scale factors

spike <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt")

spike_factor <- spike

spike_factor$V2 <- 1 / (spike_factor$V2 / 1000000)

spike_factor$V2 <- as.character(spike_factor$V2)

#write.table(spike_factor, file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads_factor.txt", row.names = F, col.names = F, quote = F, sep = "\t")


TSS_plot <- function(y = c(a, b)) {
  par(mai = c(0.5, 0.7, 0.25, 0.25))
  
  plot(reg[, 1],
       x = 1:101,
       xaxt = "n", 
       yaxs = "i", 
       yaxt = "n", 
       ylim = c(y[1], y[2]),
       type = "l", 
       ylab = "CPM", 
       xlab = "", 
       col = "red", 
       lwd = 1, 
       xaxs = "i", 
       bty = "n")
  
  
  
  
  points(reg[, 5], 
         x = 1:101,
         type = "l",
         col = "red2",
         lwd = 1)
  points(reg[, 2], 
         x = 1:101,
         type = "l",
         col = "orange",
         lwd = 1)
  points(reg[, 6], 
         x = 1:101,
         type = "l",
         col = "goldenrod1",
         lwd = 1)
  points(reg[, 3], 
         x = 1:101,
         type = "l",
         col = "blue",
         lwd = 1)
  points(reg[, 7], 
         x = 1:101,
         type = "l",
         col = "cornflowerblue",
         lwd = 1)
  points(reg[, 4], 
         x = 1:101,
         type = "l",
         col = "green",
         lwd = 1)
  points(reg[, 8], 
         x = 1:101,
         type = "l",
         col = "springgreen",
         lwd = 1)
  
  axis(side = 1, 
       at = c(1, 51, 101), 
       labels = c("-5kb","TSS", "+5kb"), 
       lwd = 1.25,
       gap.axis = 0,
       tck = -0.04,
       padj = -0.75)
  axis(side = 2, 
       at = c(y[1], (y[2] / 2), y[2]), 
       labels = c(y[1], (y[2] / 2), y[2]), 
       lwd = 1.25, 
       las = 2,
       tck = -0.04,
       hadj = 0.75)
  
  legend(x = 5, 
         y = (y[2] * 0.75),
         legend = c("WT 0", "WT 90", "KI 0", "KI 90"),
         col = c("red", "orange", "blue", "green"),
         lwd = 1,
         cex = 0.6)
  
}

TSS_av_plot <- function(y = c(a, b)) {

par(mai = c(0.5, 0.7, 0.25, 0.25))

plot(apply(reg[, c(1, 5)], 1, mean),
     x = 1:101,
     xaxt = "n", 
     yaxs = "i", 
     yaxt = "n", 
     ylim = c(y[1], y[2]),
     type = "l", 
     ylab = "CPM", 
     xlab = "", 
     col = "red", 
     lwd = 1, 
     xaxs = "i", 
     bty = "n")





points(apply(reg[, c(2, 6)], 1, mean), 
       x = 1:101,
       type = "l",
       col = "orange",
       lwd = 1)

points(apply(reg[, c(3, 7)], 1, mean), 
       x = 1:101,
       type = "l",
       col = "blue",
       lwd = 1)
points(apply(reg[, c(4, 8)], 1, mean), 
       x = 1:101,
       type = "l",
       col = "green",
       lwd = 1)


axis(side = 1, 
     at = c(1, 51, 101), 
     labels = c("-5kb","TSS", "+5kb"), 
     lwd = 1.25,
     gap.axis = 0,
     tck = -0.04,
     padj = -0.75)
axis(side = 2, 
     at = c(y[1], (y[2] / 2), y[2]), 
     labels = c(y[1], (y[2] / 2), y[2]), 
     lwd = 1.25, 
     las = 2,
     tck = -0.04,
     hadj = 0.75)

legend(x = 5, 
       y = (y[2] * 0.75),
       legend = c("WT 0", "WT 90", "KI 0", "KI 90"),
       col = c("red", "orange", "blue", "green"),
       lwd = 1,
       cex = 0.6)

}

genebody_plot <- function(y = c(a, b), st, ed) {
  par(mai = c(0.5, 0.7, 0.25, 0.25))
  
  plot(reg[, 1],
       x = 1:101,
       xaxt = "n", 
       yaxs = "i", 
       yaxt = "n", 
       ylim = c(y[1], y[2]),
       type = "l", 
       ylab = "CPM", 
       xlab = "", 
       col = "red", 
       lwd = 1, 
       xaxs = "i", 
       bty = "n")
  
  
  
  
  points(reg[, 5], 
         x = 1:101,
         type = "l",
         col = "red2",
         lwd = 1)
  points(reg[, 2], 
         x = 1:101,
         type = "l",
         col = "orange",
         lwd = 1)
  points(reg[, 6], 
         x = 1:101,
         type = "l",
         col = "goldenrod1",
         lwd = 1)
  points(reg[, 3], 
         x = 1:101,
         type = "l",
         col = "blue",
         lwd = 1)
  points(reg[, 7], 
         x = 1:101,
         type = "l",
         col = "cornflowerblue",
         lwd = 1)
  points(reg[, 4], 
         x = 1:101,
         type = "l",
         col = "green",
         lwd = 1)
  points(reg[, 8], 
         x = 1:101,
         type = "l",
         col = "springgreen",
         lwd = 1)
  
  axis(side = 1, 
       at = c(1, 21, 81, 101), 
       labels = c("-5kb", st, ed, "+5kb"), 
       lwd = 1.25,
       gap.axis = 0,
       tck = -0.04,
       padj = -0.75)
  axis(side = 2, 
       at = c(y[1], (y[2] / 2), y[2]), 
       labels = c(y[1], (y[2] / 2), y[2]), 
       lwd = 1.25, 
       las = 2,
       tck = -0.04,
       hadj = 0.75)
  
  legend(x = 50, 
         y = (y[2] * 0.75),
         legend = c("WT 0", "WT 90", "KI 0", "KI 90"),
         col = c("red", "orange", "blue", "green"),
         lwd = 1,
         cex = 0.6)
  
}

genebody_av_plot <- function(y = c(a, b), st, ed) {
  par(mai = c(0.5, 0.7, 0.25, 0.25))
  
  plot(apply(reg[, c(1, 5)], 1, mean),
       x = 1:101,
       xaxt = "n", 
       yaxs = "i", 
       yaxt = "n", 
       ylim = c(y[1], y[2]),
       type = "l", 
       ylab = "CPM", 
       xlab = "", 
       col = "red", 
       lwd = 1, 
       xaxs = "i", 
       bty = "n")
  
  
  points(apply(reg[, c(2, 6)], 1, mean), 
         x = 1:101,
         type = "l",
         col = "orange",
         lwd = 1)
  points(apply(reg[, c(3, 7)], 1, mean), 
         x = 1:101,
         type = "l",
         col = "blue",
         lwd = 1)
  points(apply(reg[, c(4, 8)], 1, mean), 
         x = 1:101,
         type = "l",
         col = "green",
         lwd = 1)
  
  axis(side = 1, 
       at = c(1, 21, 81, 101), 
       labels = c("-5kb", st, ed, "+5kb"), 
       lwd = 1.25,
       gap.axis = 0,
       tck = -0.04,
       padj = -0.75)
  axis(side = 2, 
       at = c(y[1], (y[2] / 2), y[2]), 
       labels = c(y[1], (y[2] / 2), y[2]), 
       lwd = 1.25, 
       las = 2,
       tck = -0.04,
       hadj = 0.75)
  
  legend(x = 50, 
         y = (y[2] * 0.75),
         legend = c("WT 0", "WT 90", "KI 0", "KI 90"),
         col = c("red", "orange", "blue", "green"),
         lwd = 1,
         cex = 0.6)
  
}


#Figure H4K3me TSS unnormalized

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me_tss/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me_tss/avgprof.RData")

reg <- 1:101

nrow(enrichList[[1]])

for (i in 1:length(enrichList))
{
  
  fir <- data.frame(enrichList[i])
  val <- apply(fir, 2, mean)
  reg <- cbind(reg, val)
  colnames(reg)[i + 1] <- colnames(regcovMat)[i]
  
}

reg <- reg[, c(2:ncol(reg), 1)]

max(reg[, 1:8])

#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me_tss_unnorm.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_plot(y = c(0, 0.25))

dev.off()



#Figure H4K3me gene body spike-in normalized

spike <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt")
me1 <- spike[c(1:8),]

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me_gene/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me_gene/avgprof.RData")

reg <- 1:101

nrow(enrichList[[1]])

for (i in 1:length(enrichList))
{
  
  fir <- data.frame(enrichList[i])
  val <- apply(fir, 2, mean)
  reg <- cbind(reg, val)
  colnames(reg)[i + 1] <- colnames(regcovMat)[i]
  
}

reg <- reg[, c(2:ncol(reg), 1)]

for (i in 1:(ncol(reg) - 1))
{
  
  reg[, i] <- (reg[, i] * v.lib.size[i])
  reg[, i] <- reg[, i] / me1[i, 2]
  
}


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me_genebody_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_plot(y = c(0, 2), "TSS", "TES")

dev.off()








#Figure H4K3me TSS spike-in normalized

spike <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt")
me1 <- spike[c(1:8),]

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me_tss/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me_tss/avgprof.RData")

reg <- 1:101

nrow(enrichList[[1]])

for (i in 1:length(enrichList))
{
  
  fir <- data.frame(enrichList[i])
  val <- apply(fir, 2, mean)
  reg <- cbind(reg, val)
  colnames(reg)[i + 1] <- colnames(regcovMat)[i]
  
}

reg <- reg[, c(2:ncol(reg), 1)]

for (i in 1:(ncol(reg) - 1))
{
  
  reg[, i] <- (reg[, i] * v.lib.size[i])
  reg[, i] <- reg[, i] / me1[i, 2]
  
}


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me_TSS_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_plot(y = c(0, 2))

dev.off()



#Figure H4K3me TSS averaged spike-in normalized

spike <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt")
me1 <- spike[c(1:8),]

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me_tss/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me_tss/avgprof.RData")

reg <- 1:101

nrow(enrichList[[1]])

for (i in 1:length(enrichList))
{
  
  fir <- data.frame(enrichList[i])
  val <- apply(fir, 2, mean)
  reg <- cbind(reg, val)
  colnames(reg)[i + 1] <- colnames(regcovMat)[i]
  
}

reg <- reg[, c(2:ncol(reg), 1)]

for (i in 1:(ncol(reg) - 1))
{
  
  reg[, i] <- (reg[, i] * v.lib.size[i])
  reg[, i] <- reg[, i] / me1[i, 2]
  
}


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me_TSS_average.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_av_plot(y = c(0, 2))

dev.off()





#Figure H3K4me enhancer spike-in normalized

spike <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt")
me <- spike[c(1:8),]

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me_enh/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me_enh/avgprof.RData")

reg <- 1:101

nrow(enrichList[[1]])

for (i in 1:length(enrichList))
{
  
  fir <- data.frame(enrichList[i])
  val <- apply(fir, 2, mean)
  reg <- cbind(reg, val)
  colnames(reg)[i + 1] <- colnames(regcovMat)[i]
  
}

reg <- reg[, c(2:ncol(reg), 1)]

for (i in 1:(ncol(reg) - 1))
{
  
  reg[, i] <- (reg[, i] * v.lib.size[i])
  reg[, i] <- reg[, i] / me[i, 2]
  
}


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me_enh_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_plot(c(0, 5), "start", "end")

dev.off()



#Figure H3K4me enhancer average spike-in normalized

spike <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt")
me <- spike[c(1:8),]

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me_enh/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me_enh/avgprof.RData")

reg <- 1:101

nrow(enrichList[[1]])

for (i in 1:length(enrichList))
{
  
  fir <- data.frame(enrichList[i])
  val <- apply(fir, 2, mean)
  reg <- cbind(reg, val)
  colnames(reg)[i + 1] <- colnames(regcovMat)[i]
  
}

reg <- reg[, c(2:ncol(reg), 1)]

for (i in 1:(ncol(reg) - 1))
{
  
  reg[, i] <- (reg[, i] * v.lib.size[i])
  reg[, i] <- reg[, i] / me[i, 2]
  
}


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me_enh__norm_average.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_av_plot(c(0, 5), "start", "end")

dev.off()






###H3K4me3



#Figure H4K3me3 gene body spike-in normalized

spike <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt")
me3 <- spike[c(9:16),]

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_gene/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_gene/avgprof.RData")

reg <- 1:101

nrow(enrichList[[1]])

for (i in 1:length(enrichList))
{
  
  fir <- data.frame(enrichList[i])
  val <- apply(fir, 2, mean)
  reg <- cbind(reg, val)
  colnames(reg)[i + 1] <- colnames(regcovMat)[i]
  
}

reg <- reg[, c(2:ncol(reg), 1)]

for (i in 1:(ncol(reg) - 1))
{
  
  reg[, i] <- (reg[, i] * v.lib.size[i])
  reg[, i] <- reg[, i] / me3[i, 2]
  
}

max(reg[,1:8])


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_genebody_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_plot(c(0, 13), "TSS", "TES")

dev.off()


#Figure H4K3me3 gene body spike-in normalized average

spike <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt")
me3 <- spike[c(9:16),]

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_gene/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_gene/avgprof.RData")

reg <- 1:101

nrow(enrichList[[1]])

for (i in 1:length(enrichList))
{
  
  fir <- data.frame(enrichList[i])
  val <- apply(fir, 2, mean)
  reg <- cbind(reg, val)
  colnames(reg)[i + 1] <- colnames(regcovMat)[i]
  
}

reg <- reg[, c(2:ncol(reg), 1)]

for (i in 1:(ncol(reg) - 1))
{
  
  reg[, i] <- (reg[, i] * v.lib.size[i])
  reg[, i] <- reg[, i] / me3[i, 2]
  
}

max(reg[,1:8])


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_genebody_norm_av.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_av_plot(c(0, 13), "TSS", "TES")

dev.off()



#Figure H4K3me3 TSS CPM normalized

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_tss/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_tss/avgprof.RData")

reg <- 1:101

nrow(enrichList[[1]])

for (i in 1:length(enrichList))
{
  
  fir <- data.frame(enrichList[i])
  val <- apply(fir, 2, mean)
  reg <- cbind(reg, val)
  colnames(reg)[i + 1] <- colnames(regcovMat)[i]
  
}

reg <- reg[, c(2:ncol(reg), 1)]



#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_TSS_unnorm.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_plot(c(0, 5))

dev.off()


#Figure H4K3me3 TSS spike-in normalized

spike <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt")
me3 <- spike[c(9:16),]

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_tss/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_tss/avgprof.RData")

reg <- 1:101

nrow(enrichList[[1]])

for (i in 1:length(enrichList))
{
  
  fir <- data.frame(enrichList[i])
  val <- apply(fir, 2, mean)
  reg <- cbind(reg, val)
  colnames(reg)[i + 1] <- colnames(regcovMat)[i]
  
}

reg <- reg[, c(2:ncol(reg), 1)]

for (i in 1:(ncol(reg) - 1))
{
  
  reg[, i] <- (reg[, i] * v.lib.size[i])
  reg[, i] <- reg[, i] / me3[i, 2]
  
}

max(reg[,1:8])


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_tss_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_plot(c(0, 22))

dev.off()



#Figure H4K3me3 TSS spike-in normalized average

spike <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt")
me3 <- spike[c(9:16),]

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_tss/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_tss/avgprof.RData")

reg <- 1:101

nrow(enrichList[[1]])

for (i in 1:length(enrichList))
{
  
  fir <- data.frame(enrichList[i])
  val <- apply(fir, 2, mean)
  reg <- cbind(reg, val)
  colnames(reg)[i + 1] <- colnames(regcovMat)[i]
  
}

reg <- reg[, c(2:ncol(reg), 1)]

for (i in 1:(ncol(reg) - 1))
{
  
  reg[, i] <- (reg[, i] * v.lib.size[i])
  reg[, i] <- reg[, i] / me3[i, 2]
  
}

max(reg[,1:8])


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_tss_average.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_av_plot(c(0, 22))

dev.off()



#Figure H3K4me3 enhancer spike-in normalized

spike <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt")
me3 <- spike[c(9:16),]

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_enh/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_enh/avgprof.RData")

reg <- 1:101

nrow(enrichList[[1]])

for (i in 1:length(enrichList))
{
  
  fir <- data.frame(enrichList[i])
  val <- apply(fir, 2, mean)
  reg <- cbind(reg, val)
  colnames(reg)[i + 1] <- colnames(regcovMat)[i]
  
}

reg <- reg[, c(2:ncol(reg), 1)]

for (i in 1:(ncol(reg) - 1))
{
  
  reg[, i] <- (reg[, i] * v.lib.size[i])
  reg[, i] <- reg[, i] / me3[i, 2]
  
}


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_enh_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_plot(c(0, 1.6), "start", "end")

dev.off()



#Figure H3K4me3 enhancer spike-in average

spike <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt")
me3 <- spike[c(9:16),]

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_enh/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_enh/avgprof.RData")

reg <- 1:101

nrow(enrichList[[1]])

for (i in 1:length(enrichList))
{
  
  fir <- data.frame(enrichList[i])
  val <- apply(fir, 2, mean)
  reg <- cbind(reg, val)
  colnames(reg)[i + 1] <- colnames(regcovMat)[i]
  
}

reg <- reg[, c(2:ncol(reg), 1)]

for (i in 1:(ncol(reg) - 1))
{
  
  reg[, i] <- (reg[, i] * v.lib.size[i])
  reg[, i] <- reg[, i] / me3[i, 2]
  
}


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_enh_norm_average.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_av_plot(c(0, 1.6), "start", "end")

dev.off()






###H3K27ac






#Figure H3K27ac gene body spike-in normalized

spike <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt")
ac <- spike[c(17:24),]

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K27ac_gene/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K27ac_gene/avgprof.RData")

reg <- 1:101

nrow(enrichList[[1]])

for (i in 1:length(enrichList))
{
  
  fir <- data.frame(enrichList[i])
  val <- apply(fir, 2, mean)
  reg <- cbind(reg, val)
  colnames(reg)[i + 1] <- colnames(regcovMat)[i]
  
}

reg <- reg[, c(2:ncol(reg), 1)]

for (i in 1:(ncol(reg) - 1))
{
  
  reg[, i] <- (reg[, i] * v.lib.size[i])
  reg[, i] <- reg[, i] / ac[i, 2]
  
}


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K27ac_genebody_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_plot(c(0, 3.2), "TSS", "TES")

dev.off()



#Figure H3K27ac TSS unnormalized

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K27ac_tss/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K27ac_tss/avgprof.RData")

reg <- 1:101

nrow(enrichList[[1]])

for (i in 1:length(enrichList))
{
  
  fir <- data.frame(enrichList[i])
  val <- apply(fir, 2, mean)
  reg <- cbind(reg, val)
  colnames(reg)[i + 1] <- colnames(regcovMat)[i]
  
}

reg <- reg[, c(2:ncol(reg), 1)]

max(reg[, 1:8])

#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K27ac_tss_unnorm.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_plot(c(0, 0.8))

dev.off()


#Figure H3K27ac TSS spike-in normalized

spike <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt")
ac <- spike[c(17:24),]

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K27ac_tss/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K27ac_tss/avgprof.RData")

reg <- 1:101

nrow(enrichList[[1]])

for (i in 1:length(enrichList))
{
  
  fir <- data.frame(enrichList[i])
  val <- apply(fir, 2, mean)
  reg <- cbind(reg, val)
  colnames(reg)[i + 1] <- colnames(regcovMat)[i]
  
}

reg <- reg[, c(2:ncol(reg), 1)]

for (i in 1:(ncol(reg) - 1))
{
  
  reg[, i] <- (reg[, i] * v.lib.size[i])
  reg[, i] <- reg[, i] / ac[i, 2]
  
}


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K27ac_tss_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_plot(c(0, 4.8))

dev.off()



#Figure H3K27ac TSS average spike-in normalized

spike <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt")
ac <- spike[c(17:24),]

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K27ac_tss/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K27ac_tss/avgprof.RData")

reg <- 1:101

nrow(enrichList[[1]])

for (i in 1:length(enrichList))
{
  
  fir <- data.frame(enrichList[i])
  val <- apply(fir, 2, mean)
  reg <- cbind(reg, val)
  colnames(reg)[i + 1] <- colnames(regcovMat)[i]
  
}

reg <- reg[, c(2:ncol(reg), 1)]

for (i in 1:(ncol(reg) - 1))
{
  
  reg[, i] <- (reg[, i] * v.lib.size[i])
  reg[, i] <- reg[, i] / ac[i, 2]
  
}


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K27ac_tss_norm_average.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_av_plot(c(0, 4))

dev.off()



#Figure H3K27ac enhancer spike-in normalized

spike <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt")
ac <- spike[c(17:24),]

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K27ac_enh//heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K27ac_enh//avgprof.RData")

reg <- 1:101

nrow(enrichList[[1]])

for (i in 1:length(enrichList))
{
  
  fir <- data.frame(enrichList[i])
  val <- apply(fir, 2, mean)
  reg <- cbind(reg, val)
  colnames(reg)[i + 1] <- colnames(regcovMat)[i]
  
}

reg <- reg[, c(2:ncol(reg), 1)]

for (i in 1:(ncol(reg) - 1))
{
  
  reg[, i] <- (reg[, i] * v.lib.size[i])
  reg[, i] <- reg[, i] / ac[i, 2]
  
}


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K27ac_enh_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_plot(c(0, 3.2), "start", "end")

dev.off()



#Figure H3K27ac enhancer average spike-in normalized

spike <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt")
ac <- spike[c(17:24),]

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K27ac_enh/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K27ac_enh/avgprof.RData")

reg <- 1:101

nrow(enrichList[[1]])

for (i in 1:length(enrichList))
{
  
  fir <- data.frame(enrichList[i])
  val <- apply(fir, 2, mean)
  reg <- cbind(reg, val)
  colnames(reg)[i + 1] <- colnames(regcovMat)[i]
  
}

reg <- reg[, c(2:ncol(reg), 1)]

for (i in 1:(ncol(reg) - 1))
{
  
  reg[, i] <- (reg[, i] * v.lib.size[i])
  reg[, i] <- reg[, i] / ac[i, 2]
  
}


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K27ac_enh_norm_average.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_av_plot(c(0, 3.2), "start", "end")

dev.off()







###MYC






#Figure MYC enhancer spike-in normalized

lib_sizes <- read.table(file = "C:/Users/jangro/Documents/Sequencing/ChIP_JGVK_210622/deduplicated_MYC/MYC_lib_size.csv", sep = ",", header = T)

spike <- lib_sizes$un_factor

myc <- spike

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/MYC_enh/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/MYC_enh/avgprof.RData")

reg <- 1:101

nrow(enrichList[[1]])

for (i in 1:length(enrichList))
{
  
  fir <- data.frame(enrichList[i])
  val <- apply(fir, 2, mean)
  reg <- cbind(reg, val)
  colnames(reg)[i + 1] <- colnames(regcovMat)[i]
  
}

reg <- reg[, c(2:ncol(reg), 1)]

for (i in 1:(ncol(reg) - 1))
{
  
  reg[, i] <- (reg[, i] * lib_sizes[i, 2])
  reg[, i] <- reg[, i] * myc[i] 
  reg[, i] <- reg[, i] / 1000000
  
}

reg <- reg[, c(1, 5, 3, 7, 2, 6, 4, 8, 9)]

max(reg[, 1:8])

#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/MYC_enh_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_plot(c(0, 1.8), "start", "end")

dev.off()

#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/MYC_enh_norm_average.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_av_plot(c(0, 1.8), "start", "end")

dev.off()



#Figure MYC super enhancer spike-in normalized

lib_sizes <- read.table(file = "C:/Users/jangro/Documents/Sequencing/ChIP_JGVK_210622/deduplicated_MYC/MYC_lib_size.csv", sep = ",", header = T)

spike <- lib_sizes$un_factor

myc <- spike

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/MYC_super_enh//heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/MYC_super_enh/avgprof.RData")

reg <- 1:101

nrow(enrichList[[1]])

for (i in 1:length(enrichList))
{
  
  fir <- data.frame(enrichList[i])
  val <- apply(fir, 2, mean)
  reg <- cbind(reg, val)
  colnames(reg)[i + 1] <- colnames(regcovMat)[i]
  
}

reg <- reg[, c(2:ncol(reg), 1)]

for (i in 1:(ncol(reg) - 1))
{
  
  reg[, i] <- (reg[, i] * lib_sizes[i, 2])
  reg[, i] <- reg[, i] * myc[i] 
  reg[, i] <- reg[, i] / 1000000
  
}

reg <- reg[, c(1, 5, 3, 7, 2, 6, 4, 8, 9)]

max(reg[, 1:8])

#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/MYC_enh_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_plot(c(0, 1.9), "start", "end")

dev.off()

genebody_av_plot(c(0, 1.9), "start", "end")

dev.off()


#Figure MYC TSS spike-in normalized

lib_sizes <- read.table(file = "C:/Users/jangro/Documents/Sequencing/ChIP_JGVK_210622/deduplicated_MYC/MYC_lib_size.csv", sep = ",", header = T)

spike <- lib_sizes$un_factor

myc <- spike

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/MYC_tss/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/MYC_tss/avgprof.RData")

reg <- 1:101

nrow(enrichList[[1]])

for (i in 1:length(enrichList))
{
  
  fir <- data.frame(enrichList[i])
  val <- apply(fir, 2, mean)
  reg <- cbind(reg, val)
  colnames(reg)[i + 1] <- colnames(regcovMat)[i]
  
}

reg <- reg[, c(2:ncol(reg), 1)]
head(reg)
head(regcovMat)
for (i in 1:(ncol(reg) - 1))
{
  
  reg[, i] <- (reg[, i] * lib_sizes[i, 2] * lib_sizes[i, 6] / 1000000)
  
}

reg <- reg[, c(1, 5, 3, 7, 2, 6, 4, 8, 9)]

max(reg[, 1:8])

#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/MYC_TSS_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_plot(c(0, 5))

dev.off()


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/MYC_TSS_norm_average.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_av_plot(c(0, 5))

dev.off()


