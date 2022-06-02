##we installed the readr package first before anything


library('readr')
path <- 'C:/Users/IROANYA/Documents/DATA ANALYSIS FILES/diabetes.csv'
df <-  read.csv(path)
View(df)

##checking num of columns and rows
print(ncol(df))
print(nrow(df))

###printing the column names
cols <- colnames(df)
print(cols)

##or
for(i in colnames(df)){
  print(i)
}


a_val <- df$Age >= 50  ##the dollar sign must be present when calling a column name
c_val <- df[a_val,] ##the square brackets are for indexing, the comma must be present
print(c_val)        ##the indexing ensures the result is printed
View(c_val)         ##the square brackets makes sure the figures are printed instead of the true and false values


##creating a function for the table

age_dependency <- function(age_val){ #step1 creating a variable for the function and assign a value to the function
  a_val <- df$Age >= age_val         #step2 creating a variable for the age from the column name
  b_val <- df[a_val,]                #step3 creating a variable for the indexing to view other values
  print(b_val)
  View(b_val)
}

age_dependency(30)

### function to get a age and the outcome
age_outcome_dependency <- function(age_val, outcome_val){
  age_outcome_val <- df$Age >= age_val  & df$Outcome == outcome_val
  a_out <- df[age_outcome_val, ]
  print(a_out)
}
age_outcome_dependency(30, 1)


##to find the unique age values and their average(mean) blood pressures

age_mean_bp_func <- function(a){
  unique_age_val <- unique(a)
  bp_mean <- c()
  for(i in unique_age_val){
    bp <- df$Age == i   ###this brings the bp of each age
    df_ages <- df[bp, ]  ##new variable for the indexing
    mean_bp <- mean(df_ages$BloodPressure) ##looking for the mean bp's
    bp_mean <- c(bp_mean, mean_bp)
  }
  print(bp_mean)  ##at this point we know only the mean bp's but not hteir ages
  ##we create a dataframe to solve this problem
  
  new_age_bpmean <- data.frame(
    age_values <- unique_age_val,
    mean_bps <- bp_mean
  )
  return(new_age_bpmean)
}
print(new_age_bpmean)

a <- age_mean_bp_func(df$Pregnancies)
print(a)

##function for the highest bp_mean and the age
highest_bp <- function(new_age_bpmean){
  max_bp <- max(new_age_bpmean$mean_bps....bp_mean)
  x <- new_age_bpmean$mean_bps....bp_mean == max_bp
  return(x)
}
new_age_bpmean[x,]

##function for the lowest bp_mean and the age
lowest_bp <- function(new_age_bpmean){
  min_bp <- min(new_age_bpmean$mean_bps....bp_mean)
  y <- new_age_bpmean$mean_bps....bp_mean == min_bp
  return(y)
}
new_age_bpmean[y,]



##function for the percentage of blood pressures
bp_vals <- df$BloodPressure 
percentage_bp <- c()
for(i in bp_vals){
  bp_percentage <- round((i/sum(df$BloodPressure))*100,3) ##rounds the answer to 3d.p
  percentage_bp <- c(percentage_bp, bp_percentage)
}
bp_values_percent <- data.frame(
  bps <- bp_vals,
  bp_perc <- percentage_bp
)
print(bp_values_percent)
View(bp_values_percent)


