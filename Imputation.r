# install.packages('mice')
library('mice')
library('ggplot2')
library(VIM)
path = '/home/jln436/Internship_AUMC/'

# Read in csv file
df_full = read.csv(file = paste0(path, 'output/dfs/B_df1_nonimputed.csv'))
# Drop respnr
respnr <- df_full$respnr
df_full <- df_full[,-1]

#### Imputation
# Set up predictor matrix:
# Need to do random dataframes of size 30: can still use the predMatrix setup:
base_vect <- c(rep(1, 30), rep(0, length(df_full) - 30)) # Sample vector

# setup matrix by randomly shuffling the vector above
set.seed(1)
predMatrix <- t(matrix(sample(base_vect))) # Initialize matrix with first row
for(i in 2:length(df_full)-1){
    set.seed(i*2)
    #print(i)
    #next_vector <- sample(base_vect)
    predMatrix <- rbind(predMatrix, sample(base_vect)) # Add next row to matrix   
}
# Assign rows and columns
rownames(predMatrix) <- colnames(df_full)
colnames(predMatrix) <- colnames(df_full)


tempData <- mice(df_full, m=5, predictorMatrix = predMatrix, maxit=5, meth='pmm', seed=25, remove.collinear=FALSE, threshold = 1.0)
summary(tempData)

imputed <- complete(tempData)

# Check for remaining imputed words
na_count <-sapply(imputed, function(y) sum(length(which(is.na(y)))))
sum(na_count > 0)
imputed_final <- cbind(respnr, imputed)
write.csv(imputed_final,paste0(path, 'output/dfs/B_df1_imputed.csv'), row.names = FALSE)