# main_script2.R


# Make sure working directory is the same as the script location (implicitly handled in GitHub Actions)
# Print working directory
cat("Working directory:", getwd(), "\n")

# Set up and confirm output folder
output_dir <- file.path(getwd(), "outputs/script2")
dir.create(output_dir, recursive = TRUE, showWarnings = FALSE)
cat("Created directory:", output_dir, "\n")

# Confirm contents before saving
print("Files in 'outputs' before saving:")
print(list.files("outputs", recursive = TRUE))

# Save dummy test file just to verify
writeLines("test", file.path(output_dir, "test.txt"))




# Load the helper script
source("RD_and_DT_Algorithm_copy.R")  # Ensure this file is in the same directory

lambda <- 2


results_1 <- data.frame(
  Run = integer(),
  C = numeric(),
  Length = numeric(),
  Cost = numeric(),
  NumDisambigs = integer(),
  N = integer()
)

cost <- 1

for (i in 1:200) {
  set.seed(i)
  obs_gen_para <- c(gamma = 0.3, d = 5, noPoints = 50, no_c = 25, no_o = 25)
  result <- ACS_Alg_M(obs_gen_para, kei = 2, lambda, cost)
  
  results_1[i, ] <- list(
    Run = i,
    C = cost,
    Length = result$Length_total,
    Cost = result$Cost_total,
    NumDisambigs = length(result$Disambiguate_state),
    N = 25
  )
}

saveRDS(results_1, file.path(output_dir, "data_25_1_1.rds"))




results_2 <- data.frame(
  Run = integer(),
  C = numeric(),
  Length = numeric(),
  Cost = numeric(),
  NumDisambigs = integer(),
  N = integer()
)

cost <- 2

for (i in 1:200) {
  set.seed(200+i)
  obs_gen_para <- c(gamma = 0.3, d = 5, noPoints = 50, no_c = 25, no_o = 25)
  result <- ACS_Alg_M(obs_gen_para, kei = 2, lambda, cost)
  
  results_2[i, ] <- list(
    Run = i,
    C = cost,
    Length = result$Length_total,
    Cost = result$Cost_total,
    NumDisambigs = length(result$Disambiguate_state),
    N = 25
  )
}

saveRDS(results_2, file.path(output_dir, "data_25_1_2.rds"))




results_3 <- data.frame(
  Run = integer(),
  C = numeric(),
  Length = numeric(),
  Cost = numeric(),
  NumDisambigs = integer(),
  N = integer()
)

cost <- 3

for (i in 1:200) {
  set.seed(400+i)
  obs_gen_para <- c(gamma = 0.3, d = 5, noPoints = 50, no_c = 25, no_o = 25)
  result <- ACS_Alg_M(obs_gen_para, kei = 2, lambda, cost)
  
  results_3[i, ] <- list(
    Run = i,
    C = cost,
    Length = result$Length_total,
    Cost = result$Cost_total,
    NumDisambigs = length(result$Disambiguate_state),
    N = 25
  )
}

saveRDS(results_3, file.path(output_dir, "data_25_1_3.rds"))



results_4 <- data.frame(
  Run = integer(),
  C = numeric(),
  Length = numeric(),
  Cost = numeric(),
  NumDisambigs = integer(),
  N = integer()
)

cost <- 4 

for (i in 1:200) {
  set.seed(600+i)
  obs_gen_para <- c(gamma = 0.3, d = 5, noPoints = 50, no_c = 25, no_o = 25)
  result <- ACS_Alg_M(obs_gen_para, kei = 2, lambda, cost)
  
  results_4[i, ] <- list(
    Run = i,
    C = cost,
    Length = result$Length_total,
    Cost = result$Cost_total,
    NumDisambigs = length(result$Disambiguate_state),
    N = 25
  )
}

saveRDS(results_4, file.path(output_dir, "data_25_1_4.rds"))





results_5 <- data.frame(
  Run = integer(),
  C = numeric(),
  Length = numeric(),
  Cost = numeric(),
  NumDisambigs = integer(),
  N = integer()
)

cost <- 5

for (i in 1:200) {
  set.seed(800+i)
  obs_gen_para <- c(gamma = 0.3, d = 5, noPoints = 50, no_c = 25, no_o = 25)
  result <- ACS_Alg_M(obs_gen_para, kei = 2, lambda, cost)
  
  results_5[i, ] <- list(
    Run = i,
    C = cost,
    Length = result$Length_total,
    Cost = result$Cost_total,
    NumDisambigs = length(result$Disambiguate_state),
    N = 25
  )
}

saveRDS(results_5, file.path(output_dir, "data_25_1_5.rds"))




results_6 <- data.frame(
  Run = integer(),
  C = numeric(),
  Length = numeric(),
  Cost = numeric(),
  NumDisambigs = integer(),
  N = integer()
)

cost <- 6

for (i in 1:200) {
  set.seed(1000+i)
  obs_gen_para <- c(gamma = 0.3, d = 5, noPoints = 50, no_c = 25, no_o = 25)
  result <- ACS_Alg_M(obs_gen_para, kei = 2, lambda, cost)
  
  results_6[i, ] <- list(
    Run = i,
    C = cost,
    Length = result$Length_total,
    Cost = result$Cost_total,
    NumDisambigs = length(result$Disambiguate_state),
    N = 25
  )
}

saveRDS(results_6, file.path(output_dir, "data_25_1_6.rds"))





results_7 <- data.frame(
  Run = integer(),
  C = numeric(),
  Length = numeric(),
  Cost = numeric(),
  NumDisambigs = integer(),
  N = integer()
)

cost <- 7

for (i in 1:200) {
  set.seed(1200+i)
  obs_gen_para <- c(gamma = 0.3, d = 5, noPoints = 50, no_c = 25, no_o = 25)
  result <- ACS_Alg_M(obs_gen_para, kei = 2, lambda, cost)
  
  results_7[i, ] <- list(
    Run = i,
    C = cost,
    Length = result$Length_total,
    Cost = result$Cost_total,
    NumDisambigs = length(result$Disambiguate_state),
    N = 25
  )
}

saveRDS(results_7, file.path(output_dir, "data_25_1_7.rds"))



results_8 <- data.frame(
  Run = integer(),
  C = numeric(),
  Length = numeric(),
  Cost = numeric(),
  NumDisambigs = integer(),
  N = integer()
)

cost <- 8 

for (i in 1:200) {
  set.seed(1400+i)
  obs_gen_para <- c(gamma = 0.3, d = 5, noPoints = 50, no_c = 25, no_o = 25)
  result <- ACS_Alg_M(obs_gen_para, kei = 2, lambda, cost)
  
  results_8[i, ] <- list(
    Run = i,
    C = cost,
    Length = result$Length_total,
    Cost = result$Cost_total,
    NumDisambigs = length(result$Disambiguate_state),
    N = 25
  )
}

saveRDS(results_8, file.path(output_dir, "data_25_1_8.rds"))




results_9 <- data.frame(
  Run = integer(),
  C = numeric(),
  Length = numeric(),
  Cost = numeric(),
  NumDisambigs = integer(),
  N = integer()
)

cost <- 9

for (i in 1:200) {
  set.seed(1600+i)
  obs_gen_para <- c(gamma = 0.3, d = 5, noPoints = 50, no_c = 25, no_o = 25)
  result <- ACS_Alg_M(obs_gen_para, kei = 2, lambda, cost)
  
  results_9[i, ] <- list(
    Run = i,
    C = cost,
    Length = result$Length_total,
    Cost = result$Cost_total,
    NumDisambigs = length(result$Disambiguate_state),
    N = 25
  )
}

saveRDS(results_9, file.path(output_dir, "data_25_1_9.rds"))




# Combine all results into one table
results <- rbind(results_1, results_2, results_3,
                 results_4, results_5, results_6, results_7, results_8, results_9)

# Format output
results_out <- data.frame(
  Index = paste0('"', 1:nrow(results), '"'),  # Quoted index
  results[, c("C", "Length", "Cost", "NumDisambigs", "N")]  # Make sure column names match
)

# Define the custom header (space-separated, quoted)
header <- '"C" "length" "cost" "number_of_disambiguations" "n"'

# Define output path
txt_path <- file.path(output_dir, "results_ACS2_mixed.txt")

# Write header manually
writeLines(header, txt_path)

# Append data
write.table(
  results_out,
  file = txt_path,
  append = TRUE,
  row.names = FALSE,
  col.names = FALSE,
  quote = FALSE,
  sep = " "
)

cat("✅ Text results saved to:", txt_path, "\n")
