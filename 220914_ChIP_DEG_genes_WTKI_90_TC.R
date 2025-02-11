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


#Figure H3K4me TSS KI WT 0 up spike-in normalized

load(unz("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI90WT90/H3K4me_tss_WT_KI_90_up_TC.zip", "H3K4me_tss_WT_KI_90_up_TC/avgprof.RData"))
load(unz("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI90WT90/H3K4me_tss_WT_KI_90_up_TC.zip", "H3K4me_tss_WT_KI_90_up_TC/heatmap.RData"))

reg <- ngs_norm(spike = read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt"), 
                ran = c(1:8))


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI0WT0/H3K4me_TSS_KI0vsWT0_up_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_plot(y = c(0, 3))

dev.off()


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI0WT0/H3K4me_TSS_KI0vsWT0_up_norm_av.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_av_plot(y = c(0, 3))

dev.off()


#Figure H3K4me TSS KI WT 0 down spike-in normalized

load(unz("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI90WT90/H3K4me_tss_WT_KI_90_down_TC.zip", "H3K4me_tss_WT_KI_90_down_TC/avgprof.RData"))
load(unz("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI90WT90/H3K4me_tss_WT_KI_90_down_TC.zip", "H3K4me_tss_WT_KI_90_down_TC/heatmap.RData"))

reg <- ngs_norm(spike = read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt"), 
                ran = c(1:8))

#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI0WT0/H3K4me_TSS_KI0vsWT0_down_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_plot(y = c(0, 3))

dev.off()


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI0WT0/H3K4me_TSS_KI0vsWT0_down_norm_av.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_av_plot(y = c(0, 3))

dev.off()




#Figure H4K3me gene body KI WT 0 up spike-in normalized

load(unz("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI90WT90/H3K4me_gene_WT_KI_90_up_TC.zip", "H3K4me_gene_WT_KI_90_up_TC/avgprof.RData"))
load(unz("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI90WT90/H3K4me_gene_WT_KI_90_up_TC.zip", "H3K4me_gene_WT_KI_90_up_TC/heatmap.RData"))

reg <- ngs_norm(spike = read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt"), 
                ran = c(1:8))


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI0WT0/H3K4me_genebody_KI0vsWT0_up_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_plot(y = c(0, 3), "TSS", "TES")

dev.off()


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI0WT0/H3K4me_genebody_KI0vsWT0_up_norm_av.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_av_plot(y = c(0, 3), "TSS", "TES")

dev.off()



#Figure H4K3me gene body KI WT 0 down spike-in normalized

load(unz("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI90WT90/H3K4me_gene_WT_KI_90_down_TC.zip", "H3K4me_gene_WT_KI_90_down_TC/avgprof.RData"))
load(unz("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI90WT90/H3K4me_gene_WT_KI_90_down_TC.zip", "H3K4me_gene_WT_KI_90_down_TC/heatmap.RData"))

reg <- ngs_norm(spike = read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt"), 
                ran = c(1:8))


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI0WT0/H3K4me_genebody_KI0vsWT0_down_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_plot(y = c(0, 3), "TSS", "TES")

dev.off()


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI0WT0/H3K4me_genebody_KI0vsWT0_down_norm_av.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_av_plot(y = c(0, 3), "TSS", "TES")

dev.off()


################



#Figure H3K4me3 TSS KI WT 0 up spike-in normalized

load(unz("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI90WT90/H3K4me3_tss_WT_KI_90_up_TC.zip", "H3K4me3_tss_WT_KI_90_up_TC/avgprof.RData"))
load(unz("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI90WT90/H3K4me3_tss_WT_KI_90_up_TC.zip", "H3K4me3_tss_WT_KI_90_up_TC/heatmap.RData"))

reg <- ngs_norm(spike = read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt"), 
                ran = c(9:16))


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI0WT0/H3K4me3_TSS_KI0vsWT0_up_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_plot(y = c(0, 26))

dev.off()


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI0WT0/H3K4me3_TSS_KI0vsWT0_up_norm_av.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_av_plot(y = c(0, 26))

dev.off()


#Figure H3K4me3 TSS KI WT 0 down spike-in normalized

load(unz("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI90WT90/H3K4me3_tss_WT_KI_90_down_TC.zip", "H3K4me3_tss_WT_KI_90_down_TC/avgprof.RData"))
load(unz("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI90WT90/H3K4me3_tss_WT_KI_90_down_TC.zip", "H3K4me3_tss_WT_KI_90_down_TC/heatmap.RData"))

reg <- ngs_norm(spike = read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt"), 
                ran = c(9:16))


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI0WT0/H3K4me3_TSS_KI0vsWT0_down_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_plot(y = c(0, 26))

dev.off()


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI0WT0/H3K4me3_TSS_KI0vsWT0_down_norm_av.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_av_plot(y = c(0, 26))

dev.off()


#Figure H3K4me3 gene body KI WT 0 up spike-in normalized

load(unz("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI90WT90/H3K4me3_gene_WT_KI_90_up_TC.zip", "H3K4me3_gene_WT_KI_90_up_TC/avgprof.RData"))
load(unz("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI90WT90/H3K4me3_gene_WT_KI_90_up_TC.zip", "H3K4me3_gene_WT_KI_90_up_TC/heatmap.RData"))

reg <- ngs_norm(spike = read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt"), 
                ran = c(9:16))

#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI0WT0/H3K4me3_genebody_KI0vsWT0_up_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_plot(y = c(0, 15), "TSS", "TES")

dev.off()


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI0WT0/H3K4me3_genebody_KI0vsWT0_up_norm_av.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_av_plot(y = c(0, 15), "TSS", "TES")

dev.off()



#Figure H3K4me3 gene body KI WT 0 down spike-in normalized

load(unz("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI90WT90/H3K4me3_gene_WT_KI_90_down_TC.zip", "H3K4me3_gene_WT_KI_90_down_TC/avgprof.RData"))
load(unz("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI90WT90/H3K4me3_gene_WT_KI_90_down_TC.zip", "H3K4me3_gene_WT_KI_90_down_TC/heatmap.RData"))

reg <- ngs_norm(spike = read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt"), 
                ran = c(9:16))


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI0WT0/H3K4me3_genebody_KI0vsWT0_down_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_plot(y = c(0, 15), "TSS", "TES")

dev.off()


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI0WT0/H3K4me3_genebody_KI0vsWT0_down_norm_av.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_av_plot(y = c(0, 15), "TSS", "TES")

dev.off()


################



#Figure H3K27ac TSS spike-in KI WT 0 up normalized

load(unz("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI90WT90/H3K27ac_tss_WT_KI_90_up_TC.zip", "H3K27ac_tss_WT_KI_90_up_TC/avgprof.RData"))
load(unz("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI90WT90/H3K27ac_tss_WT_KI_90_up_TC.zip", "H3K27ac_tss_WT_KI_90_up_TC/heatmap.RData"))

reg <- ngs_norm(spike = read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt"), 
                ran = c(17:24))



#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI0WT0/H3K27ac_TSSKI0vsWT0_up_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_plot(y = c(0, 6))

dev.off()


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI0WT0/H3K27ac_TSSKI0vsWT0_up_norm_av.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_av_plot(y = c(0, 6))

dev.off()


#Figure H3K27ac TSS spike-in KI WT 0 down normalized

load(unz("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI90WT90/H3K27ac_tss_WT_KI_90_down_TC.zip", "H3K27ac_tss_WT_KI_90_down_TC/avgprof.RData"))
load(unz("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI90WT90/H3K27ac_tss_WT_KI_90_down_TC.zip", "H3K27ac_tss_WT_KI_90_down_TC/heatmap.RData"))

reg <- ngs_norm(spike = read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt"), 
                ran = c(17:24))


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI0WT0/H3K27ac_TSSKI0vsWT0_down_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_plot(y = c(0, 6))

dev.off()


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI0WT0/H3K27ac_TSSKI0vsWT0_down_norm_av.pdf", pointsize = 10, width = 2.75, height = 2.5)

TSS_av_plot(y = c(0, 6))

dev.off()



#Figure H3K27ac gene body KI WT 0 up spike-in normalized

load(unz("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI90WT90/H3K27ac_gene_WT_KI_90_up_TC.zip", "H3K27ac_gene_WT_KI_90_up_TC/avgprof.RData"))
load(unz("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI90WT90/H3K27ac_gene_WT_KI_90_up_TC.zip", "H3K27ac_gene_WT_KI_90_up_TC/heatmap.RData"))

reg <- ngs_norm(spike = read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt"), 
                ran = c(17:24))


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI0WT0/H3K27ac_genebodyKI0vsWT0_up_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_plot(y = c(0, 4), "TSS", "TES")

dev.off()


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI0WT0/H3K27ac_genebodyKI0vsWT0_up_norm_av.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_av_plot(y = c(0, 4), "TSS", "TES")

dev.off()



#Figure H3K27ac gene body KI WT 0 down spike-in normalized

load(unz("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI90WT90/H3K27ac_gene_WT_KI_90_down_TC.zip", "H3K27ac_gene_WT_KI_90_down_TC/avgprof.RData"))
load(unz("C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI90WT90/H3K27ac_gene_WT_KI_90_down_TC.zip", "H3K27ac_gene_WT_KI_90_down_TC/heatmap.RData"))

reg <- ngs_norm(spike = read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt"), 
                ran = c(17:24))


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI0WT0/H3K27ac_genebodyKI0vsWT0_down_norm.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_plot(y = c(0, 4), "TSS", "TES")

dev.off()


#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/ngsplot/DEG_genes_KI0WT0/H3K27ac_genebodyKI0vsWT0_down_norm_av.pdf", pointsize = 10, width = 2.75, height = 2.5)

genebody_av_plot(y = c(0, 4), "TSS", "TES")

dev.off()


