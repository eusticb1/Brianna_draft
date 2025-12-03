## Project:  STA 215, Fall 2023, Final Project
# Located:  postit cloud
# File Name: template
# Date:      2025_12_2
# Who:       Brianna Eustice


## Load packages
# NOTE: Run base.R if these commands return an error!
library(readr)
library(dplyr)
library(tidyverse)
library(ggplot2)
library(haven)
library(forcats)
library(psych)
# Load data 
data <- read_csv("data.csv") 

##################################################################################
############### Table 1: descriptive statistics    ####################   
##################################################################################
#mean of member's age 
table(data$age)
mean(data$age)
sd(data$age)
hist(data$age)
summary (data$age)
min(data$age)
max(data$age)


table(data$leadership_role)
mean(data$leadership_role)
sd(data$leadership_role)
hist(data$leadership_role)
summary(data$leadership_role)
min(data$leadership_role)
max (data$leadership_role)
##################################################################################
#################### Figure 1: boxplot             ####################   
##################################################################################
lm(age ~ leadership_role, data)
aov(age ~ leadership_role, data)
summary(age ~ leadership_role, data)
boxplot(age ~ leadership_role, data)

lm(age ~ leadership_role, data)
aov(age ~ leadership_role, data)
summary(age ~ leadership_role, data)

#BOX PLOT
ggplot(data, aes(x = factor(leadership_role), y = age)) +
  geom_boxplot() +
  labs(
    title = "Box Plot of Age by Leadership Role",
    x = "Leadership Role",
    y = "Age"
  ) +
  theme_minimal()
