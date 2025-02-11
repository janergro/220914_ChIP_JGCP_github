C1_peaks <- read.table("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/human_peaks_broad/C_1_S1_R1_001_human/C_1_S1_R1_001_human_peaks.broadPeak")

head(C1_peaks)

C1_peaks$V11 <- C1_peaks$V3 - C1_peaks$V2

C1_peaks <- C1_peaks[order(C1_peaks$V11, decreasing = T),]

rownames(C1_peaks) <- NULL

C1_peaks_long <- C1_peaks[1:(nrow(C1_peaks) / 20),]
#C1_peaks_long <- C1_peaks[C1_peaks$V11 > 4500,]

#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/human_peaks_broad/C_1_peak_length_dis.pdf", pointsize = 10, width = 2.75, height = 2.5)

par(mai = c(0.5, 0.7, 0.25, 0.25))

plot(1:nrow(C1_peaks), 
     C1_peaks$V11,
     ylab = "peak length in bp",
     xlab = "peak rank",
     xaxt = "n", 
     yaxs = "i", 
     yaxt = "n", 
     ylim = c(0, 90000),
     xlim = c(-2000, 120000),
     lwd = 1, 
     xaxs = "i", 
     bty = "n",
     xpd = T)

axis(side = 1, 
     at = c(-2000, 0), 
     labels = c("", ""), 
     lwd = 1.25, 
     las = 1,
     tck = 0,
     hadj = 0.75)
axis(side = 1, 
     at = seq(0, 120000, 40000), 
     labels = seq(0, 120000, 40000), 
     lwd = 1.25, 
     las = 1,
     tck = -0.04,
     hadj = 0.75)
axis(side = 2, 
     at = seq(0, 90000, 15000), 
     labels = seq(0, 90000, 15000), 
     lwd = 1.25,
     gap.axis = 0,
     tck = -0.04,
     padj = -0.75,
     las = 1)

dev.off()

plot(1:nrow(C1_peaks_long), C1_peaks_long$V11)

head(C1_peaks_long)

#write.table(C1_peaks_long, file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/human_peaks_broad/C_1_S1_R1_001_human/C_1_S1_R1_001_human_peaks_long.broadPeak", quote = F, row.names = F, col.names = F, sep = "\t")

#write.table(C1_peaks_long[, 1:4], file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/human_peaks_broad/C_1_S1_R1_001_human/C_1_broad.bed", quote = F, row.names = F, col.names = F, sep = "\t")

#write.table(C1_peaks[, 1:4], file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/human_peaks_broad/C_1_S1_R1_001_human/C_1.bed", quote = F, row.names = F, col.names = F, sep = "\t")


D1_peaks <- read.table("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/human_peaks_broad/D_1_S9_R1_001_human/D_1_S9_R1_001_human_peaks.broadPeak")

head(D1_peaks)

D1_peaks$V11 <- D1_peaks$V3 - D1_peaks$V2

D1_peaks <- D1_peaks[order(D1_peaks$V11, decreasing = T),]

rownames(D1_peaks) <- NULL

D1_peaks_long <- D1_peaks[1:(nrow(D1_peaks) / 20),]
#D1_peaks_long <- D1_peaks[D1_peaks$V11 > 4500,]

#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/human_peaks_broad/D_1_peak_length_dis.pdf", pointsize = 10, width = 2.75, height = 2.5)

par(mai = c(0.5, 0.7, 0.25, 0.25))

plot(1:nrow(D1_peaks), 
     D1_peaks$V11,
     ylab = "peak length in bp",
     xlab = "peak rank",
     xaxt = "n", 
     yaxs = "i", 
     yaxt = "n", 
     ylim = c(0, 10000),
     xlim = c(-500, 16000),
     lwd = 1, 
     xaxs = "i", 
     bty = "n",
     xpd = T)

axis(side = 1, 
     at = c(-500, 0), 
     labels = c("", ""), 
     lwd = 1.25, 
     las = 1,
     tck = 0,
     hadj = 0.75)
axis(side = 1, 
     at = seq(0, 16000, 8000), 
     labels = seq(0, 16000, 8000), 
     lwd = 1.25, 
     las = 1,
     tck = -0.04,
     hadj = 0.75)
axis(side = 2, 
     at = seq(0, 10000, 2500), 
     labels = seq(0, 10000, 2500), 
     lwd = 1.25,
     gap.axis = 0,
     tck = -0.04,
     padj = -0.75,
     las = 1)

dev.off()

plot(1:nrow(D1_peaks_long), D1_peaks_long$V11)

head(D1_peaks_long)

#write.table(D1_peaks_long, file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/human_peaks_broad/D_1_S9_R1_001_human/D_1_S9_R1_001_human_peaks_long.broadPeak", quote = F, row.names = F, col.names = F, sep = "\t")

#write.table(D1_peaks_long[, 1:4], file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/human_peaks_broad/D_1_S9_R1_001_human/D_1_broad.bed", quote = F, row.names = F, col.names = F, sep = "\t")

#write.table(D1_peaks[, 1:4], file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/human_peaks_broad/D_1_S9_R1_001_human/D_1.bed", quote = F, row.names = F, col.names = F, sep = "\t")


E1_peaks <- read.table("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/human_peaks_broad/E_1_S17_R1_001_human/E_1_S17_R1_001_human_peaks.broadPeak")

head(E1_peaks)

E1_peaks$V11 <- E1_peaks$V3 - E1_peaks$V2

E1_peaks <- E1_peaks[order(E1_peaks$V11, decreasing = T),]

rownames(E1_peaks) <- NULL

E1_peaks_long <- E1_peaks[1:(nrow(E1_peaks) / 100),]
#E1_peaks_long <- E1_peaks[E1_peaks$V11 > 4500,]

plot(1:nrow(E1_peaks), E1_peaks$V11)
plot(1:nrow(E1_peaks_long), E1_peaks_long$V11)

head(E1_peaks_long)

#write.table(E1_peaks_long, file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/human_peaks_broad/E_1_S17_R1_001_human/E_1_S17_R1_001_human_peaks_long.broadPeak", quote = F, row.names = F, col.names = F, sep = "\t")

#write.table(E1_peaks_long[, 1:4], file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/human_peaks_broad/E_1_S17_R1_001_human/E_1_broad.bed", quote = F, row.names = F, col.names = F, sep = "\t")

#write.table(E1_peaks[, 1:4], file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/human_peaks_broad/E_1_S17_R1_001_human/E_1.bed", quote = F, row.names = F, col.names = F, sep = "\t")


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

genebody_plot <- function(y = c(a, b), st, st_l, ed, ed_l) {
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
       labels = c(st_l, st, ed, ed_l), 
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

genebody_av_plot <- function(y = c(a, b), st, st_l, ed, ed_l) {
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
       labels = c(st_l, st, ed, ed_l), 
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

ngs_norm <- function(spike, ran) {
  
  norm_f <- spike[ran,]
  
  reg <- 1:101
  
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
    reg[, i] <- reg[, i] / norm_f[i, 2]
    
  }
  
  return(reg) 
  
} 

#Figure H4K3me broad

load(unz("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me_peak_broad.zip", "H3K4me_peak_broad/avgprof.RData"))
load(unz("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me_peak_broad.zip", "H3K4me_peak_broad/heatmap.RData"))

reg <- ngs_norm(spike = read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt"), 
                ran = c(1:8))

#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_LV/H3K4me_genebody_WT90vs0_up_norm_LV.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_plot(y = c(0, 5), "start","+10%", "end", "-10%")

dev.off()


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me_broad_av.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_av_plot(y = c(0, 5), "start","+10%", "end", "-10%")

dev.off()


#Figure H4K3me3 broad

load(unz("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_peak_broad.zip", "H3K4me3_peak_broad/avgprof.RData"))
load(unz("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_peak_broad.zip", "H3K4me3_peak_broad/heatmap.RData"))

reg <- ngs_norm(spike = read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt"), 
                ran = c(9:16))

#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_LV/H3K4me_genebody_WT90vs0_up_norm_LV.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_plot(y = c(0, 35), "start","+10%", "end", "-10%")

dev.off()


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K4me3_broad.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_av_plot(y = c(0, 35), "start","+10%", "end", "-10%")

dev.off()


#Figure H4K27ac broad

load(unz("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K27ac_peak_broad.zip", "H3K27ac_peak_broad/avgprof.RData"))
load(unz("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K27ac_peak_broad.zip", "H3K27ac_peak_broad/heatmap.RData"))

reg <- ngs_norm(spike = read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt"), 
                ran = c(17:24))

#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_LV/H3K4me_genebody_WT90vs0_up_norm_LV.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_plot(y = c(0, 10), "start","+10%", "end", "-10%")

dev.off()


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/H3K27ac_broad_av.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_av_plot(y = c(0, 10), "start","+10%", "end", "-10%")

dev.off()

