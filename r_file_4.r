##a set question
0
d <- c('a', 'b', 'c', 'e', 'j')
t <- c('g', 'k', 'l', 'a', 'e', 'c')
'%!in%' <- Negate('%in%') ## to find values not in a vector use the negative of in and
##store in !in(not in)
for (i in d){
  if (i %!in% t){
    print (i)
  }
}

x <- c('jamie', 'kate', 'pogba')
z <- c('kate', 'john', 'jamie')
'%!in%' <- Negate('%in')
for (i in x){
  if (i %!in% z){
    l <- nchar(i)
    print(l)
  }
}



y <- x[!(x %in% z)]
for (i in y)
  print(nchar(i))
print(y)


##prompt statement and readline statement

arr <- c()
range_arr <- as.integer(readline(prompt='Enter your array range: '))
for (i in 1:range_arr){
  users_val <- as.integer(readline(prompt ='Enter values for array: ' ))
  arr <- c(arr, users_val)
}
print(arr)


##permutation without the permutation function

pam <- readline(prompt = 'enter value: ')
count <- nchar(pam)
def_count  <- 1
for(i in 1:count){
  def_count <- i * def_count
}
print(paste(pam, 'can be arranged', def_count, 'times', sep = ' '))



##convert from Fahrenheit to Celsius and kelvin and vice versa

temp <- as.numeric(readline(prompt = 'Enter temperature value: '))
unit <- tolower(readline(prompt = 'what unit (f/c/k): '))
if (unit == 'f'){
  celsius <- (9/5) * (temp -32)
  print(paste('The temperature value is', celsius, 'degree celsius', sep=' '))
  kelvin <- ((9/5) * (temp - 32) + 273)
  print(paste('The temperature value is', kelvin, 'degree kelvin', sep=' '))
  
}else if (unit == 'c'){
  fahr <- (9/5 * temp) + 32
  print(paste('The temperature value is', fahr, 'degree fahrenheit', sep=' '))
  kelvin <- temp + 273
  print(paste('The temperature value is', kelvin, 'degree kelvin', sep=' '))

}else if (unit == 'k'){
  fahr <- (temp - 273.15) * 9/5 + 32
  print(paste('The temperature value is', fahr, 'degree fahrenheit', sep=' '))
  celsius <- temp - 273.15
  print(paste('The temperature value is', celsius, 'degree celsius', sep=' '))
}else{
  print('invalid value')
}


##permutation for an array of values using nested for loops

range_val <- as.integer(readline(prompt = 'Enter rage of values: '))
arr_val <- c()
for (i in 1:range_val){
  arr_val <- c(arr_val, readline(prompt = 'Enter array values: '))
}
for (i in arr_val){
  k <- 1
  b <- nchar(i)
  for (n in 1:b){
    k <- k * n
  }
}
print(paste('The permutation of ', i, 'is', k, sep = ' '))


###solving for standard deviation

a <- c(6, 10, 12, 3, 1)
b <- c(4, 13, 8,9, 5)
d <- a-b
#print(d)
sum_d <- 0
for (i in d){
  sum_d <- i + sum_d
}
#print(sum_d)
mean_d <- sum_d/length(d)
#print(mean_d)
std_arr <- c()
for (i in d){
  k <- i - mean_d
  std_arr <- c(std_arr, (k**2))
}
#print(std_arr)
std_sum <- 0
for (i in std_arr){
  std_sum <- i + std_sum
}
print(std_sum)

std_dev <- (std_sum/length(d)) **(1/2)
print(std_dev)

##another maths question with the same vctors above

max_b <- b[1]
for (i in b){
  if (i > max_b)
    max_b = i
}
print(max_b)


##another with the same vectors
sum_a <- 0
for (i in a){
  sum_a <- i + sum_a
}
print(sum_a)
mean_a <- sum_a/length(a)

q_ans <- mean_a/max_b
print(q_ans)

