##solving the utivia questions with r

library('readr')
path_2 <- "C:/Users/IROANYA/Documents/DATA ANALYSIS FILES/Brewery_data.csv"
df_2 <- read.csv(path_2)
View(df_2)

##profits of the anglophone and francophone territories in the last 3 years

last_3_years <- unique(df_2$YEARS)
print(last_3_years)

countries <- df_2$COUNTRIES
territories <- c()
for(i in countries){
  if(i == 'Nigeria' | i == 'Ghana'){
    territories <- c(territories, 'Anglophone')
  }else{
    territories <- c(territories, 'Francophone')
  }
}
##code for dataframe
# territory <- data.frame(
#   TERRITORIES <- territories
# )
# print(territory)

##rather than creating a dataframe and merging, we use the mutate keyword for the vector creted
df_3 <- mutate(df_2, TERRITORY = territories)
View(df_3)


#you could also pick the part of the table to join the vector 
df_4 <- df_2 %>% mutate(TERRITORY = territories,   ##%>% serves as a pipeline for the code
                        .after=COUNTRIES)          ##.after indicates the column we want it to come after
View(df_4)


##computing total profits for all territories
total_profit <- sum(df_3$PROFIT)
print(total_profit)

##computing total  profits for the anglophone territory
a_y <- df_4$TERRITORY == 'Anglophone'
anglo <- df_4[a_y,]
View(anglo)
anglo_profit <- sum(anglo$PROFIT)
print(anglo_profit)


###function for loading data

load.path <- function( path_val){
  df2 <- read.csv(path_val)
  return (df2)
}
