library(tidyverse)
library(cowplot)

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
capacity = 10
alleles <- c(0L, 1L)
fitness <- c(1,1)
ngen_small <- 5
ngen_mid <- 20

#==============================================================================
# AUXILIARY FUNCTIONS
#==============================================================================

make_initial_pop <- function(cap = capacity, al = alleles, fit = fitness){
  tibble(id = seq(cap), generation = 0, parent = id,
         allele = as.factor(rep(al, each = cap/length(al))),
         fitness = rep(fit, each = cap/length(al)))
}

make_child_pop <- function(pop, cap = capacity){
  pop %>% filter(generation == max(generation)) %>%
    sample_n(cap, T, fitness) %>% arrange(id) %>%
    mutate(generation = generation + 1, parent = id, id = seq(cap))
}

iterate_pop <- function(pop, cap = capacity){
  bind_rows(pop, make_child_pop(pop, cap))
}

make_circ_plot <- function(pop, s = 5){
  ggplot(pop) + 
    geom_segment(aes(x=pmax(0,generation-1), xend=generation, y=parent, 
                     yend=id, colour = allele)) +
    geom_point(aes(x=generation, y=id, colour=allele), shape = 16, size = s) +
    scale_color_brewer(type = "qual", palette = "Set1") + theme_blank
}

generation_pop <- function(generation, cap = capacity, al = alleles, 
                           fit = fitness){
  p <- make_initial_pop(cap, al, fit)
  if(generation > 0) for (n in seq(generation)){ p <- iterate_pop(p, cap) }
  return(p)
}

count_states <- function(pop){
  # Count the number of states in the latest generation from a population
  pop %>% filter(generation == max(generation)) %>% pull(allele) %>%
    unique %>% length
}

fix_pop <- function(cap = capacity, al = alleles, fit = fitness,
                    tail = 0){
  # Run a population until it reaches fixation
  p <- make_initial_pop(cap, al, fit)
  while(count_states(p) > 1) p <- iterate_pop(p, cap)
  if (tail > 0) for (n in seq(tail)){ p <- iterate_pop(p, cap) }
  return(p)
}

get_fixation_dist <- function(n = 100, cap = capacity, al = alleles, 
                              fit = fitness){
  sapply(seq(n), function(n) fix_pop(cap, al, fit) %>% pull(generation) %>%
           max) %>% 
    tibble(run = 1:n, fix = .)
}

make_stack_plot <- function(pop){
  pop %>% group_by(generation, allele, fitness) %>% 
    summarise(N = n(), P = n()/100) %>%
    ggplot() +
    geom_col(aes(x=generation,y=P,fill=allele), position="fill",
             width = 1) +
    scale_x_continuous(name = "Generation") +
    scale_y_continuous(name = "Allele frequency (%)",
                       labels = function(y) y*100) +
    scale_fill_brewer(type = "qual", palette = "Set1") + 
    theme_minimal() + theme_base + theme(legend.position = "none")
}

#==============================================================================
# INITIAL PARENTAL POPULATION
#==============================================================================

pop_0 = make_initial_pop()
g_0 <- make_circ_plot(pop_0)
save_plot(filename = "content/images/coalescent-0.png",
          plot = g_0, base_width = 10, base_height = 8, units="cm",
          limitsize = FALSE)


#==============================================================================
# FIRST CHILD GENERATION
#==============================================================================

pop_1 <- iterate_pop(pop_0)
g_1 <- make_circ_plot(pop_1)
save_plot(filename = "content/images/coalescent-1.png",
          plot = g_1, base_width = 10, base_height = 8, units="cm",
          limitsize = FALSE)


#==============================================================================
# LATER CHILD GENERATIONS
#==============================================================================

pop_small <- generation_pop(ngen_small)
g_small <- make_circ_plot(pop_small)
save_plot(filename = "content/images/coalescent-small.png",
          plot = g_small, base_width = 10, base_height = 8, units="cm",
          limitsize = FALSE)


pop_mid <- generation_pop(ngen_mid)
g_mid <- make_circ_plot(pop_mid)
save_plot(filename = "content/images/coalescent-mid.png",
          plot = g_mid, base_width = 20, base_height = 8, units="cm",
          limitsize = FALSE)

#==============================================================================
# BIG POPULATION
#==============================================================================

pop_big <- fix_pop(200, tail=20)
g_big <- make_stack_plot(pop_big)
save_plot(filename = "content/images/coalescent-200-neutral.png",
          plot = g_big, base_width = 15, base_height = 8, units="cm",
          limitsize = FALSE)


