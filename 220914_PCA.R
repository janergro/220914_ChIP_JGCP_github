all_norm <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/all_summary_norm.tab", header = T)

#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/all_norm_PCA.pdf", pointsize = 10, width = 2.75, height = 2.5)

par(mai = c(0.6, 0.7, 0.25, 0.25))

plot(x = unlist(all_norm[1, 2:(ncol(all_norm) - 1)]), 
     y = unlist(all_norm[2, 2:(ncol(all_norm) - 1)]), 
     type = "p",
     xlim = c(-0.25, 0.25),
     ylim = c(-0.35, 0.15),
     pch = c(rep(15, 8), rep(16, 8), rep(17, 8)),
     col = c("red", "orange", "blue", "green",
             "red2", "goldenrod1", "cornflowerblue", "springgreen"),
     cex = 2,
     xaxt = "n", 
     yaxs = "i", 
     yaxt = "n", 
     xaxs = "i", 
     bty = "n",
     ylab = expression(paste("PC 2, 16.2 % of ", sigma^2)), 
     xlab = expression(paste("PC 1, 71.9 % of ", sigma^2)))


axis(side = 1, 
     at = seq(-0.25, 0.25, 0.125), 
     labels = seq(-0.25, 0.25, 0.125), 
     lwd = 1.25,
     gap.axis = 0,
     tck = -0.04,
     padj = -0.75)
axis(side = 2, 
     at = round(c(seq(-0.35, 0.15, 0.1), 0), digits = 2), 
     labels = round(c(seq(-0.35, 0.15, 0.1), 0), digits = 2), 
     lwd = 1.25, 
     las = 2,
     tck = -0.04,
     hadj = 0.75)

dev.off()


# Create a function to print squares of numbers in sequence.
PCA_ChIP <- function(a, b, c, d, e, f, g, h) {
        par(mai = c(0.5, 0.7, 0.25, 0.4))
        plot(x = unlist(a[1, 2:(ncol(a) - 1)]), 
             y = unlist(a[2, 2:(ncol(a) - 1)]), 
             type = "p",
             xlim = c(b, c),
             ylim = c(d, e),
             pch = c(rep(f, 8)),
             col = c("red", "orange", "blue", "green",
                     "red2", "goldenrod1", "cornflowerblue", "springgreen"),
             cex = 2,
             xaxt = "n", 
             yaxs = "i", 
             yaxt = "n", 
             xaxs = "i", 
             bty = "n",
             ylab = substitute(paste("PC 2, ", g, " % of ", sigma^2), list(g = g)), 
             xlab = "")
        title(xlab = substitute(paste("PC 1, ", h, " % of ", sigma^2), list(h = h)),
              line = 1.5)
        
        text(x = unlist(a[1, 2:(ncol(a) - 1)]), 
             y = unlist(a[2, 2:(ncol(a) - 1)]),
             pos = 4,
             col = c("red", "orange", "blue", "green",
                     "red2", "goldenrod1", "cornflowerblue", "springgreen"),
             labels = c("WT_0_1", "WT_90_1", "KI_0_1", "KI_90_1",
                        "WT_0_2", "WT_90_2", "KI_0_2",  "KI_90_2"),
             xpd =T)
        
        axis(side = 1, 
             at = c(b, c), 
             labels = c(b, c), 
             lwd = 1.25,
             gap.axis = 0,
             tck = -0.04,
             padj = -0.75)
        axis(side = 2, 
             at = seq(d, e, (e / 2)), 
             labels = seq(d, e, (e / 2)), 
             lwd = 1.25, 
             las = 2,
             tck = -0.04,
             hadj = 0.75)
        
}




C_norm <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/C_summary_norm.tab", header = T)

#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/C_norm_PCA.pdf", pointsize = 10, width = 2.75, height = 2.5)

PCA_ChIP(C_norm, 0.35, 0.36, -0.5, 0.5, 15, 1.6, 96)

dev.off()



D_norm <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/D_summary_norm.tab", header = T)

#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/D_norm_PCA.pdf", pointsize = 10, width = 2.75, height = 2.5)

PCA_ChIP(D_norm, 0.33, 0.37, -0.6, 0.6, 16, 9.2, 84)

dev.off()



E_norm <- read.table(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/E_summary_norm.tab", header = T)

#pdf(file = "C:/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/E_norm_PCA.pdf", pointsize = 10, width = 2.75, height = 2.5)

PCA_ChIP(E_norm, 0.35, 0.36, -0.6, 0.6, 17, 11.5, 87)

dev.off()
