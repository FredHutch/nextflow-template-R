#!/usr/bin/env Rscript

# Read in the table
df <- read.csv("${input_csv}")

df <- data.frame(lapply(df, paste0,  "${params.string_to_append}"))

write.csv(df, "${input_csv}.appended.csv", row.names = FALSE, quote = FALSE)