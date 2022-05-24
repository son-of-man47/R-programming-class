
##indexinng in R for a string

name <- "cynthia"
index_val <- substr(name, 1, 1)
print(index_val)


##indexing in vectors using for loop

name_v <- c("janeth", "kola", "nemii", "bolaji")
for (i in name_v){
  y <- substr(i, 1,1)
  b <- substr(i, 2, nchar(i))
  cap <- toupper(y)
  full_name <- paste(cap, b, sep="")
  print(full_name)
}

##to return it as a new vector

name_v <- c("janeth", "kola", "nemii", "bolaji")
new_names <- c()
for (i in name_v){
  y <- substr(i, 1,1)
  b <- substr(i, 2, nchar(i))
  cap <- toupper(y)
  full_name <- paste(cap, b, sep="")  ## the sep="" command means seperate with no space
  new_names <- c(new_names, full_name)
}
print(new_names)

## merging vectors
##the length of th vectors must be equal

f_name <- c("jamie", "mike", "ross")
last_name <- c("caree", "fisher", "james")
if (length(f_name) == length(last_name)){
  for (i in 1:length(last_name)){
    full_name <- paste(f_name[i], last_name[i], sep=" ")
    print(full_name)
  }
}else{
  print("veectors can't join")
}


## to solve median using if conditions

arrays <- c(3, 5, 1, 9, 2, 10, 11)
new_array <- sort(arrays)
median_val <- length(new_array)/2
index <- round(median_val) ## for odd num you have to round up to a whole num
a_index <- index + 1 ##for even you have to add 1 and divide by 2
if (length(arrays)%%2!=0){
  median_val <- new_array[index] ##the square brackets indicate the position of the defined index above
  print(paste("the median of the list is", median_val, sep=" "))
}else {
  median_val <- new_array[a_index]
  print(paste("the mdeian of the list is", median_val, sep=" "))
}
