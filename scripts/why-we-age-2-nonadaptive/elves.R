# Packages
library(tidyverse)
library(reshape2)
library(cowplot)
library(rlang)
library(gridGraphics)
library(gridExtra)

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
  plot.margin = margin(t=0.1, l=0.1, r=0.1, b = 0.1, unit="cm"),
  strip.background = element_blank(),
  strip.text.x = element_text(size = fontsize_base * fontscale_title,
                              family = titlefont, colour = "black",
                              margin = margin(t = 3, b = 3, unit="mm")),
  strip.text.y = element_text(size = fontsize_base * fontscale_title,
                              family = titlefont, colour = "black",
                              margin = margin(l=3, r=3, unit="mm")),
  legend.justification = "center"
)

# Basic parameters
max_age_plot <- 10000
elf_mort <- 0.1 * 0.01
elf_fecd <- 1 * 0.01

#==============================================================================
# MORTALITY VS SURVIVORSHIP
#==============================================================================

make_ms_tab <- function(mort_func, max_age = max_age_plot){
  tibble(Age = 1:max_age,
         Mortality = mort_func(Age),
         Survivorship = cumprod(1-Mortality)) %>%
    melt(id.vars = "Age") %>% as_tibble
}

make_ms_plot <- function(ms_tab){
  ggplot(ms_tab) + geom_line(aes(x=Age,y=value,colour=variable)) +
    facet_wrap(~variable, scales = "free_y") + 
    scale_y_continuous(name="%", labels = function(y) round(y*100)) +
    theme_classic() + theme_base +
    theme(axis.text = element_blank(), legend.position = "none")
}

# A: Constant mortality
ms_constant <- make_ms_tab(function (a) elf_mort/2)
g_constant <- make_ms_plot(ms_constant)

# B: Linear mortality
ms_linear <- make_ms_tab(function(a) elf_mort*a/5000)
g_linear <- make_ms_plot(ms_linear)

# C: exponential mortality
ms_exponential <- make_ms_tab(function(a) elf_mort*exp(-0.0005*a))
g_exponential <- make_ms_plot(ms_exponential)

# D: sinusoidal mortality
ms_sinusoidal <- make_ms_tab(function(a) (sin(a/500)+1) * elf_mort / 100)
g_sinusoidal <- make_ms_plot(ms_sinusoidal)

# Put it together
g_all <- plot_grid(g_constant, g_linear, g_exponential, g_sinusoidal,
               nrow = 2, labels = NULL)

save_plot(filename = "content/images/mortality-survivorship.png", 
       plot = g_all,
       base_width = 15, base_height = 9, units = "cm", dpi = 320,
       limitsize = FALSE)


#==============================================================================
# FECUNDITY VS REPRODUCTIVE OUTPUT
#==============================================================================

make_fr_tab <- function(mort_func, fec_func, max_age = max_age_plot){
  tibble(Age = 1:max_age,
         Mortality = mort_func(Age),
         Survivorship = cumprod(1-Mortality),
         Fecundity = fec_func(Age),
         `Repr. Output` = Fecundity * Survivorship) %>%
    melt(id.vars = "Age") %>% as_tibble
}

make_fr_plot <- function(fr_tab, max_age = max_age_plot){
  ggplot(fr_tab) + geom_line(aes(x=Age,y=value,colour=variable)) +
    facet_wrap(~variable, scales = "free") + 
    scale_y_continuous(name="%", labels = function(y) round(y*100)) +
    scale_x_continuous(limits = range(fr_tab$Age)) +
    theme_classic() + theme_base +
    theme(axis.text = element_blank(), legend.position = "none",
          plot.margin = margin(l=0.5,r=0.5,unit="cm"))
}

# A: Constant mortality and fecundity
fr_constant <- make_fr_tab(function (a) elf_mort/2,
                           function (a) elf_fecd)
g_fr_constant <- make_fr_plot(fr_constant)

# B: Linear mortality
fr_linear <- make_fr_tab(function(a) elf_mort*a/5000,
                         function(a) (max_age_plot-a)*elf_mort/5000)
g_fr_linear <- make_fr_plot(fr_linear)

# Put it together
g_fr_all <- plot_grid(g_fr_constant, g_fr_linear,
                   nrow = 1, labels = NULL)

save_plot(filename = "content/images/fecundity-output.png", 
          plot = g_fr_all,
          # base_width = 16, base_height = 9, units = "cm", dpi = 320,
          limitsize = FALSE)


#==============================================================================
# ELVES
#==============================================================================

# Dataframe
fr_elves <- tibble(Age = 1:max_age_plot,
                  Mortality = rep(elf_mort, max_age_plot),
                  Survivorship = exp(-elf_mort * Age),
                  Fecundity = rep(elf_fecd, max_age_plot),
                  `Repr. Output` = Fecundity * Survivorship) %>%
  mutate(`% Survivorship` = Survivorship * 100,
         `Cumulative\nFecundity` = cumsum(Fecundity),
         `Cumulative\nRepr. Output` = cumsum(`Repr. Output`)) %>%
  melt(id.vars = "Age") %>% as_tibble %>%
  filter(! variable %in% c("Mortality", "Fecundity", "Repr. Output",
                           "Survivorship"))

g_elves <- ggplot(fr_elves) + geom_line(aes(x=Age,y=value,colour=variable)) +
  facet_wrap(~variable, scales = "free", nrow=1) + 
  scale_x_continuous(limits = range(fr_elves$Age), name="Age (x1000)",
                     labels = function(x) x/1000, breaks = seq(0,10000,2000)) +
  theme_classic() + theme_base + 
  theme(legend.position = "none", 
        plot.margin = margin(l=0.5,r=0.5,b=0.5,unit="cm"),
        axis.title.y = element_blank())

save_plot(filename = "content/images/fecundity-elves.png",
          plot = g_elves, base_width = 13, base_height = 6, units="cm",
          # base_width = 16, base_height = 9, units = "cm", dpi = 320,
          limitsize = FALSE)

#==============================================================================
# ELF MUTATIONS
#==============================================================================

g_elves_cutoff <- fr_elves %>% 
  filter(variable %in% c("% Survivorship", "Cumulative\nRepr. Output")) %>%
  ggplot() + geom_line(aes(x=Age,y=value,colour=variable)) +
  geom_vline(xintercept=10^seq(2,4), colour="purple", linetype="dotted") +
  facet_wrap(~variable, scales = "free", nrow=1) + 
  scale_x_continuous(limits = range(fr_elves$Age), name="Age (x1000)",
                     labels = function(x) x/1000, breaks = seq(0,10000,2000)) +
  theme_classic() + theme_base + 
  theme(legend.position = "none", 
        plot.margin = margin(l=0.5,r=0.5,b=0.5,unit="cm"),
        axis.title.y = element_blank())

save_plot(filename = "content/images/elf-mutations.png",
          plot = g_elves_cutoff, base_width = 13, base_height = 6, units="cm",
          # base_width = 16, base_height = 9, units = "cm", dpi = 320,
          limitsize = FALSE)
  