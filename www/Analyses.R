# Libraries:
library(tidyverse)

# Load data:
dataset <- read_csv2("www/some_data.csv")

# Explore dataset:
dataset

# Compute variables:
countries <- dataset |>
  separate_rows(countries, sep = ', ') |>
  select(id, countries)

# Explore age range:
dataset |> summarize(
  age_min = min(age.min),
  age_max = max(age.max)
)
