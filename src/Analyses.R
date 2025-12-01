# Analyses.R
# Computes the age range in all the multi-cohort studies

# Libraries:
library(tidyverse)

# Load data:
dataset <- read_csv2("dat/some_data.csv")

# Explore dataset:
dataset

# Explore age range:
dataset |> summarize(
  age_min = min(age.min, na.rm = TRUE),
  age_max = max(age.max, na.rm = TRUE)
)
