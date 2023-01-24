### Project Title: Predicting information processing speed with machine learning methods: a step forward?
### Authors: Jonathan Lindstrom-Vautrin*, Martijn Heymans and Almar Kok
*To whom correspondence should be addressed
### Abstract: 
# Objective: to determine the extent to which future information processing speed in older adults in the Netherlands can be predicted using machine learning methods.
# Background: As life expectancy increases globally, so does the prevalence of age-related disease and age-related physical and mental decline. It is important to study the phenomenon of aging and its char-acteristics so that we can better understand how to deal with and improve conditions as we age. 
# Methods: In this study the performance of five different machine learning (ML) methods was compared alongside a baseline linear regression model with predetermined features. The ML methods were lightGBM, Random Forest, Lasso Regression, Ridge Regression and Support Vector Regressor. A total of 1100 individuals were split into a training and testing set using a 70:30 split. The models were used to predict future information processing speed. Analysis was performed twice, once with all the features and once with a subset excluding features that were cognitive tests. Mean absolute error and root mean squared error were used to evaluate the models.
# Results: When all features were included the order of performance from high to low was: lasso regres-sion, random forest, baseline linear regression, LightGBM, ridge regression and SVR. When only the subset excluding cognitive tests was used the order was LightGBM, lasso regression, random forest, ridge regression, baseline and SVR. In both cases the difference in performance between the models was small. Certain interesting features such as eating habits, frequency of exercise, peak flow lung measurements, instrumental support, and hobbies as well as perceived self-efficacy traits appeared as important features for predicting information processing speed.
# Impact: This research helps open the door for further exploration of epidemiological datasets with ML methods. The ML models can help inform which features are looked at during future hypothesis testing or prediction with linear regression. This study also identified certain interesting features that could poten-tially be related to information processing speed that have not yet been explored in depth. 


### Descriptions of all python notebooks and their contents

# Baseline_model.ipynb: Notebook where the baseline models are created
# Compare_Importances.ipynb: Comparison of the top lists of important features from each of the models from the full analysis.
	- Lists and heatmaps are created. 
# Compare_Importances_no_cog_tests.ipynb: Comparison of the top lists of important features from each of the models from the subset analysis.
	- Lists and heatmaps are created.
# EDA.ipynb: Exploratory data-analysis (graphs, distributions, missing values...)
# Get_all_Themes.ipynb: Create list of all the themes connected to the features
# Imputation.r: Imputation for the missing values
# Lasso.ipynb: Create and tune Lasso model from full analysis while running 5F CV
# Lasso_no_cog_tests.ipynb: Create Lasso model from subset without cognitive tests analysis while running 5F CV
# LightGBM.ipynb: Create and tune LightGBM model from full analysis while running 5F CV
# LightGBM_no_cog_tests.ipynb:Create LightGBM from subset without cognitive tests analysis while running 5F CV
# RandomForest.ipynb: Create and tune Random Forest model from full analysis while running 5F CV
# RandomForest_no_cog_tests.ipynb: Create Random Forest from subset without cognitive tests analysis while running 5F CV
# Raw_data_Processing.ipynb:
# Ridge_Regression.ipynb: Create and tune Ridge model from full analysis while running 5F CV
# Ridge_Regression_no_cog_tests.ipynb: Create Ridge from subset without cognitive tests analysis while running 5F CV
# SVM.ipynb: Create and tune SVR model from full analysis while running 5F CV
# SVM_no_cog_tests.ipynb: Create SVR from subset without cognitive tests analysis while running 5F CV
# Testing_Validation.ipynb: Evaluate all of the models on the testing dataset and create figures
	- Includes the explained variance linear regression models
# Variance_Explained_CV.ipynb: Explore the explained variance of each of the models using Cross-Validation for the full analysis
# Variance_Explained_no_cog_tests_CV.ipynb: Explore the explained variance of each of the models using Cross-Validation for the subset analysis
