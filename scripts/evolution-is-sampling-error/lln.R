library(tidyverse)
library(cowplot)
library(RColorBrewer)

# Define plotting theme
font <- "sans" # Main figure font
titlefont <- font # Font for axis titles etc. (if different)
fontsize_base <- 11 # Basic figure font size
fontscale_title <- 1 # Default axis-title scale relative to regular font
fontscale_main <- 1 # Default plot-title scale

theme_base <-   theme(
  legend.position = "bottom",
  axis.text = element_text(size = fontsize_base, family = font, 
                           colour = "black"),
  axis.title.y = element_text(size = fontsize_base * fontscale_title,
                              family = titlefont, colour = "black",
                              margin = margin(r=3,unit="mm")),
  axis.title.x = element_text(size = fontsize_base * fontscale_title,
                              family = titlefont, colour = "black",
                              margin = margin(t=3,unit="mm")),
  legend.text = element_text(size = fontsize_base, 
                             family = font, colour = "black"),
  legend.title = element_text(size = fontsize_base,
                              family = font, colour = "black",
                              face = "bold", vjust=0.5, 
                              margin=margin(r=3, unit="mm")),
  plot.title = element_text(size = fontsize_base * fontscale_main,
                            family = titlefont, colour="black",
                            hjust = 0.5, vjust = 0.5,
                            margin = margin(b=5, unit="mm")),
  plot.margin = margin(t=0.3, l=0.3, r=0.3, b = 0.3, unit="cm"),
  strip.background = element_blank(),
  strip.text.x = element_text(size = fontsize_base * fontscale_title,
                              family = titlefont, colour = "black",
                              margin = margin(t = 3, b = 3, unit="mm")),
  strip.text.y = element_text(size = fontsize_base * fontscale_title,
                              family = titlefont, colour = "black",
                              margin = margin(l=3, r=3, unit="mm")),
  legend.justification = "center"
)

nrep <- 1e6
p <- 0.5
sample_sizes <- c(1, 3, 10, 30, 100, 300, 1000, 3000, 10000)

# Compute average absolute difference (from expected value)
compute_aad <- function(v, n = NULL, p = NULL){
  n <- ifelse(is.null(n), max(v), n)
  ev <- ifelse(is.null(p), mean(v), p * n)
  return(mean(abs(v-ev)))
}

aad <- sapply(sample_sizes, function(m) 
  compute_aad(rbinom(nrep, m, p), m, p))

# Divide by expected value to get relative average difference
rad <- aad / (p*sample_sizes)

# Get plot
g <- tibble(n = sample_sizes, rad = rad) %>%
  ggplot() + geom_line(aes(x=n, y=rad)) + geom_point(aes(x=n, y=rad)) +
  scale_x_log10(name="Sample size") + 
  scale_y_log10("Relative mean absolute difference") + 
  theme_classic() + theme_base

save_plot(filename = "content/images/rmd-log-log.png",
          plot = g, base_width = 10, base_height = 8, units="cm",
          limitsize = FALSE)

# Some concrete examples (probability of deviating from EV by some threshold)
dev_threshold <- 0.2
m <- 10^seq(4)
ev <- m * p
coin <- sapply(m, function(m) rbinom(nrep, m, p))
ad <- abs(coin - rep(ev, each=nrep))
pdev <- colMeans(ad >= rep(ev*dev_threshold, each=nrep))
