## Load Libraries
library(tidyverse)
library(ggplot2)

## Demo Data
#Use built in R datasets, esoph. Data from a case-control study of esophageal cancer in Ille-et-Vilaine, France
#Is a data frame with records of 88 indvidals with their alcohol and tobacco status, and how many cases of noncases in each combination catorgey
data("esoph")
summary(esoph)

## Demo Question:
#Which age group has the highest number of alcohol consumption that are cases?
  
### Base R code example 
case_df1a <- esoph[c("agegp","alcgp","ncases")] #select variables 
case_df1b <- case_df1a[order(case_df1a$ncases, decreasing = TRUE),] #reorder in decreasing 
head(case_df1b,row.names = F)

### Tidyverse R code example 
case_df2 <- esoph  %>% select(c(agegp,alcgp,ncases)) %>% arrange(desc(ncases)) 
head(case_df2)

#The number of cases in each Alcohol group by ages 
ggplot(case_df2,aes(x=alcgp, y=ncases, fill=agegp)) +
        geom_bar(position="dodge", stat="identity") +
        xlab("Alcohol Consumption (g/day)") + ylab("Number of Cases") +
        labs(fill = "Age Group")




