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




#Figure H3K4me TSS WT 0 90 up spike-in normalized

spike <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt")
me1 <- spike[c(1:8),]

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me_tss_WT_0_90_up/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me_tss_WT_0_90_up/avgprof.RData")

regcovMat

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


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes/H3K4me_TSS_WT90vs0_up_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_plot(y = c(0, 3.2))

dev.off()


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes/H3K4me_TSS_WT90vs0_up_norm_av.pdf", pointsize = 10, width = 2.75, height = 2.5)


TSS_av_plot(y = c(0, 3.2))

dev.off()


#Figure H3K4me TSS WT 0 90 down spike-in normalized

spike <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt")
me1 <- spike[c(1:8),]

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me_tss_WT_0_90_down/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me_tss_WT_0_90_down/avgprof.RData")

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


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes/H3K4me_TSS_WT90vs0_down_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_plot(y = c(0, 3.2))

dev.off()


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes/H3K4me_TSS_WT90vs0_down_norm_av.pdf", pointsize = 10, width = 2.75, height = 2.5)


TSS_av_plot(y = c(0, 3.2))

dev.off()




#Figure H4K3me gene body WT 0 90 up spike-in normalized

spike <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt")
me1 <- spike[c(1:8),]

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me_gene_WT_0_90_up/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me_gene_WT_0_90_up/avgprof.RData")

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


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes/H3K4me_genebody_WT90vs0_up_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_plot(y = c(0, 3.2), "TSS", "TES")

dev.off()


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes/H3K4me_genebody_WT90vs0_up_norm_av.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_av_plot(y = c(0, 3.2), "TSS", "TES")

dev.off()



#Figure H4K3me gene body WT 0 90 down spike-in normalized

spike <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt")
me1 <- spike[c(1:8),]

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me_gene_WT_0_90_down/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me_gene_WT_0_90_down/avgprof.RData")

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


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes/H3K4me_genebody_WT90vs0_down_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_plot(y = c(0, 3.2), "TSS", "TES")

dev.off()


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes/H3K4me_genebody_WT90vs0_down_norm_av.pdf", pointsize = 10, width = 2.75, height = 2.5)


genebody_av_plot(y = c(0, 3.2), "TSS", "TES")

dev.off()


################



#Figure H3K4me3 TSS WT 0 90 up spike-in normalized

spike <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt")
me3 <- spike[c(9:16),]

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_tss_WT_0_90_up/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_tss_WT_0_90_up/avgprof.RData")

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


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes/H3K4me3_TSS_WT90vs0_up_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_plot(y = c(0, 24))

dev.off()


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes/H3K4me3_TSS_WT90vs0_up_norm_av.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_av_plot(y = c(0, 24))

dev.off()


#Figure H3K4me3 TSS WT 0 90 down spike-in normalized

spike <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt")
me3 <- spike[c(9:16),]

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_tss_WT_0_90_down/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_tss_WT_0_90_down/avgprof.RData")

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


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes/H3K4me3_TSS_WT90vs0_down_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_plot(y = c(0, 24))

dev.off()


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes/H3K4me3_TSS_WT90vs0_down_norm_av.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_av_plot(y = c(0, 24))

dev.off()


#Figure H3K4me3 gene body WT 0 90 up spike-in normalized

spike <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt")
me3 <- spike[c(9:16),]

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_gene_WT_0_90_up/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_gene_WT_0_90_up/avgprof.RData")

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


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes/H3K4me3_genebody_WT90vs0_up_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_plot(y = c(0, 10), "TSS", "TES")

dev.off()


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes/H3K4me3_genebody_WT90vs0_up_norm_av.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_av_plot(y = c(0, 10), "TSS", "TES")

dev.off()



#Figure H3K4me3 gene body WT 0 90 down spike-in normalized

spike <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt")
me3 <- spike[c(9:16),]

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_gene_WT_0_90_down/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_gene_WT_0_90_down/avgprof.RData")

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


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes/H3K4me3_genebody_WT90vs0_down_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_plot(y = c(0, 10), "TSS", "TES")

dev.off()


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes/H3K4me3_genebody_WT90vs0_down_norm_av.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_av_plot(y = c(0, 10), "TSS", "TES")

dev.off()


################



#Figure H3K27ac TSS spike-in WT 0 90 up normalized

spike <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt")
ac <- spike[c(17:24),]

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K27ac_tss_WT_0_90_up/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K27ac_tss_WT_0_90_up/avgprof.RData")

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


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes/H3K27ac_TSSWT90vs0_up_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_plot(y = c(0, 5.5))

dev.off()


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes/H3K27ac_TSSWT90vs0_up_norm_av.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_av_plot(y = c(0, 5.5))

dev.off()


#Figure H3K27ac TSS spike-in WT 0 90 down normalized

spike <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt")
ac <- spike[c(17:24),]

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K27ac_tss_WT_0_90_down/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K27ac_tss_WT_0_90_down/avgprof.RData")

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


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes/H3K27ac_TSSWT90vs0_down_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_plot(y = c(0, 5.5))

dev.off()


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes/H3K27ac_TSSWT90vs0_down_norm_av.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_av_plot(y = c(0, 5.5))

dev.off()



#Figure H3K27ac gene body WT 0 90 up spike-in normalized

spike <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt")
ac <- spike[c(17:24),]

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K27ac_gene_WT_0_90_up/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K27ac_gene_WT_0_90_up/avgprof.RData")

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


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes/H3K27ac_genebodyWT90vs0_up_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_plot(y = c(0, 4), "TSS", "TES")

dev.off()


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes/H3K27ac_genebodyWT90vs0_up_norm_av.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_av_plot(y = c(0, 4), "TSS", "TES")

dev.off()



#Figure H3K27ac gene body WT 0 90 down spike-in normalized

spike <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt")
ac <- spike[c(17:24),]

load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K27ac_gene_WT_0_90_down/heatmap.RData")
load("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K27ac_gene_WT_0_90_down/avgprof.RData")

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


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes/H3K27ac_genebodyWT90vs0_down_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_plot(y = c(0, 4), "TSS", "TES")

dev.off()


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes/H3K27ac_genebodyWT90vs0_down_norm_av.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_av_plot(y = c(0, 4), "TSS", "TES")

dev.off()


