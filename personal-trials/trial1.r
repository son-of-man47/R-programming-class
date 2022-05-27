##solving for population standard deviation with formula 

values <- c(4, 5, 57, 5, 12, 9, 42, 77, 10, 8 )
n <- length(values) ##num of values

#solving for sum of the values
sum_values <- 0
for (i in values){
  sum_values <- i + sum_values
}
print(sum_values)

#solving for the mean
mean_value <- sum_values/n
print(mean_value)

#solving the values - mean
value_deviation <- c() # we hv to put the answers in an empty vector
for (i in values){
  d <- i - mean_value
  value_deviation <- c(value_deviation, (d ** 2))
}

#summing the differences btw the mean n the values
sum_value_deviation <- 0
for (i in value_deviation){
  sum_value_deviation <- i + sum_value_deviation
}
print(sum_value_deviation)

#this is  optional to solve for the variance
variation <- sum_value_deviation / n
print(variation)

#pop_std_dev is the square root of the variance
pop_std_dev <- variation ** (1/2)
print(pop_std_dev)



#### let's ask a user for values and solve for the variance and pop_std_dev
range_val <- as.integer(readline(prompt = 'Enter the range of values: '))
users_val <- c()
for (i in 1:range_val){
  users_val <- c(users_val, as.integer(readline(prompt = 'Enter values: ')))
  
}
print(users_val)

n <- length(users_val) #length of users_val

#sum the users values
sum_user <- 0
for (i in users_val){
  sum_user <- i + sum_user
}

#solve for the mean
mean_user <- sum_user/n

#solve for the difference btw the values and mean and square it
users_dev <- c()
for (i in users_val){
  x <- i - mean_user
  users_dev <- c(users_dev, (x ** 2))
}

##sum of the above
sum_users_dev <- 0
for (i in users_dev){
  sum_users_dev <- i + sum_users_dev
}
print(sum_users_dev)

#solving for users variance
v <- sum_users_dev/n
print(v)

##solving for the pop_std_dev
s <- v ** (1/2)
print(s)



####to find the min and max value in a range of values

a <- c(3, 6, 77, 98, 45, 100, 45, 55)
min_a <- a[1]
max_a <- a[1]
for(i in a){
  if(i < min_a[1]){
    min_a <- i
  }
}
print(paste('the minimum valuenin the set is', min_a, sep = ' '))
for(i in a){
  if(i > max_a[1]){
    max_a <- i
  }
}
print(paste('the maximum value in the set is', max_a, sep = ' '))
