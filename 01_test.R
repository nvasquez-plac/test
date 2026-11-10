# ------------------------------------------------------------------------------
# 01_test.R
# Simple example: evaluate an arbitrary function y = f(x) with hardcoded
# parameters and plot the result with ggplot2. Used as a demo for GitHub.
# 
# Contacto: Nico
# COn la colaboracion de Kathy, Cata, y Rui
# Add Mexican Team
# My name is luisarmando
# ------------------------------------------------------------------------------

# Proposed changes:
# 1. Make xMin and xMax to create x
# 2. Change the labels of the y-axis and x-axis
# 3. Change the colour and type of the line in the plot
# 4. Add caption to figure

library("ggplot2")

# Hardcoded parameters ---------------------------------------------------------
a <- 3.0      # amplitude
b <- 0.5      # frequency
c <- 0.1      # exponential decay rate
d <- 1.5      # vertical offset

# x values ---------------------------------------------------------------------
xmin <- 0
xmax <- 30
x <- seq(from = xmin, to = xmax, by = 0.1)

# Arbitrary function: damped sine wave -----------------------------------------
y <- a * sin(b * x) * exp(-c * x) + d

df <- data.frame(x = x, y = y)

# Plot -------------------------------------------------------------------------
p <- ggplot(df, aes(x = x, y = y)) +
        geom_hline(yintercept = d, linetype = "dashed", colour = "grey50") +
        geom_line(colour = "blue", linewidth = 1) +
        labs(title = "y = a * sin(b * x) * exp(-c * x) + d",
            x = "x_V2",
            y = "y_V2") +
        theme_bw()

print(p)

