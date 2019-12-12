library(tidyverse)
library(cowplot)
library(RColorBrewer)
library(reshape2)

#==============================================================================
# SETUP
#==============================================================================

# Configure font settings
font <- "sans" # Main figure font
titlefont <- font # Font for axis titles etc. (if different)
fontsize_base <- 11 # Basic figure font size
fontscale_title <- 1 # Default axis-title scale relative to regular font
fontscale_main <- 1 # Default plot-title scale

# Define base theme
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

theme_blank <- theme_void() + 
  theme(legend.position = "none",
        #plot.margin = margin(t=0.3, l=0.6, r=0.6, b = 0.3, unit="cm")
        )
                                    

# Define parameters
capacity <- 10
rel_fitness <- 1
palette <- brewer.pal(6, "Set1")[c(3,4)]
start_prop <- 0.5

#==============================================================================
# AUXILIARY FUNCTIONS
#==============================================================================

# Run simulations and test fixation

run_trace <- function(cap = capacity, fit = rel_fitness, prop = start_prop){
  limit <- cap * 10
  prop_vec <- numeric(limit)
  prob_vec <- numeric(limit)
  prop_vec[1] <- prop
  prob_vec[1] <- prop * fit / ((fit - 1) * prop + 1)
  n <- 2
  while (! prop_vec[n-1] %in% c(0,1)){
    if (n < limit){
      prop_vec[n] <- rbinom(1, cap, prob_vec[n-1])/cap
      prob_vec[n] <- prop_vec[n] * fit / ((fit - 1) * prop_vec[n] + 1)
      n <- n + 1
    } else {
      prop_vec <- c(prop_vec, numeric(limit))
      prob_vec <- c(prob_vec, numeric(limit))
      limit <- limit * 2
    }
  }
  return(prop_vec[1:(n-1)])
}

test_fixation <- function(cap = capacity, fit = rel_fitness,
                          prop = start_prop){
  run_trace(cap, fit, prop) %>% tail(1) %>% as.logical
}

# Run multiple traces and get fixation statistics

count_winners <- function(nrep, cap = capacity, fit = fitness[2], 
                            sp = start_prop){
  sapply(seq(nrep), function(r) test_fixation(cap, fit, sp)) %>% mean
}

get_fix_rate <- function(nrep, caps, fit, sp){
  tibble(size = caps, p = sapply(caps, function(c) 
    count_winners(nrep, c, fit, sp)))
}

get_fix_rates_fixed <- function(nrep, caps, fit, n_indivs=1){
  # Get fix rates when starting from a fixed number of individuals
  tibble(size = caps, p = sapply(1:length(caps), function(n)
    count_winners(nrep, caps[n], fit, n_indivs/caps[n])))
}

# Make per-generation plots

get_plot_tab <- function(trace){
  tab_1 <- tibble(generation = 1:length(trace)-1, p = trace, allele = 1L)
  tab_0 <- tab_1 %>% mutate(p = 1-p, allele = 0L)
  tab <- bind_rows(tab_0, tab_1) %>% arrange(generation, allele) %>%
    mutate(allele = factor(allele, levels = c(0L, 1L)))
  return(tab)
}

make_stack_plot <- function(pop, pal = palette){
  ggplot(pop) +
    geom_col(aes(x=generation,y=p,fill=allele), position="fill",
             width = 1) +
    scale_x_continuous(name = "Generation") +
    scale_y_continuous(name = "Allele frequency (%)",
                       labels = function(y) y*100) +
    scale_fill_manual(values = pal) + 
    theme_minimal() + theme_base + theme(legend.position = "none")
}

#==============================================================================
# SLIGHTLY DELETERIOUS / ADVANTAGEOUS
#==============================================================================

nrep <- 1e4
caps <- round(10^seq(0,2.5,0.25))[-1]
delta <- 1.1

# Even start
fix_adv_even <- get_fix_rate(nrep, caps, delta, 0.5)
fix_adv_even_mod <- fix_adv_even %>%
  mutate(q = 1-p) %>% melt(id.var = "size", value.name = "p",
                           variable.name = "allele")

g_fix_even <- ggplot(fix_adv_even_mod, aes(x=size, y=p, colour=allele)) +
  geom_line() + geom_point() + 
  scale_colour_manual(values=palette) +
  scale_x_log10(name = "Population size", expand = c(0,0),
                sec.axis = dup_axis(name = NULL)) +
  scale_y_continuous(name = "P(fixation)", expand = c(0,0),
                     limits = c(0,1), breaks = seq(0,1,0.1)) +
  theme_classic() + theme_base + theme(legend.position = "none")
save_plot(filename = "content/images/coalescent-fix-even.png",
          plot = g_fix_even, base_width = 10, base_height = 8, units="cm",
          limitsize = FALSE)


# # 10% start
# fix_del_skew <- get_fix_rate(nrep, caps, 1/delta, 0.1)
# fix_adv_skew <- get_fix_rate(nrep, caps, delta, 0.1)
# 
# # Single individual
# fix_del_single <- get_fix_rates_fixed(nrep, caps, 1/delta)
# fix_adv_single <- get_fix_rates_fixed(nrep, caps, delta)