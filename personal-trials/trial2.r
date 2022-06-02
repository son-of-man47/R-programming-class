### Exercise 4.5


##Q1 converting cm to inches

l_cm <- as.numeric(readline((prompt=  'Enter length in cm: '))) 
if (l_cm < 0){
  print('invalid length')
}else{
  l_in <- l_cm / 2.5
  print(paste(l_cm, 'cm in inches is', l_in, 'inches', sep =' '))
}

##Q3

users_temp <- as.numeric(readline(prompt = 'Enter temperature in celsius: '))
if(users_temp < -273.15){
  print('Invalid temperature!!')
}else if(users_temp == -273.15){
  print('Temperature is at absolute 0')
}else if(users_temp > -273.15 && users_temp < 0){
  print('Temperature below freezing point')
}else if(users_temp == 0){
  print('Temperature is at freezing point')
}else if(users_temp > 0 && users_temp < 100){
  print('Temperature is at normal range')
}else if(users_temp == 100){
  print('Temperature is at boiling point')
}else{
  print('Temperaure is above boling point')
}



##Q4

credits = as.numeric(readline(prompt = 'Enter your credit unit: '))
if (credits <= 23){
  print('Freshman year')
}else if(credits > 24 && credits < 53){
  print('Sophomore year')
}else if(credits > 53 && credits < 83){
  print('Junior year')
}else{
  print('Senior year')
}



##Q5to sum the divisors of a value except the value itself

value = as.integer(readline(prompt= 'enter value: '))
divisors = c()
sum_divisors = 0
for (i in 1:value){
  if (value %% i == 0){
    print(i)
    divisors = c(divisors, i)
  }
}
print(divisors)
for (i in divisors[1:length(divisors)-1]){
  sum_divisors = i + sum_divisors
}
print(paste('sum of the divisors of', value, 'is', sum_divisors, sep = ' '))


##Q6 finding all perfect numbers btw 1 and 10000
### A perfect number is a number where the sum of the divisors except the number 
### is equal to the number E.g divisors of 6 are 3,2,1 and 3+2+1 = 6
perfect_numbers = c()
for ( k in 1:1000){
  n = k
  i = 1
  s = 0
  while(i < n){
    if( n %% i == 0){
      s  = s + i
    }
    i = i + 1
  }
  if(s == n){
    perfect_numbers = c(perfect_numbers, n)
  }
}
print(perfect_numbers)
k = k  + 1


##Q7 detectng a squarefree number
##a squarefree number is a number that its divisors are all non perfect sqaures
user = as.integer(readline(prompt = 'enter value: '))
divisors = c()
nsqn_div = c(1)
for(i in 1:user){
  if(user %% i == 0){
    divisors = c(divisors, i)
  }
}
for(d in divisors){
  c = round(d ** (1/2))
  if (c ** 2 != d){
    nsqn_div = c(nsqn_div, d)
  }
}
if(length(nsqn_div) == length(divisors)){
  print(paste(user, 'is a squarefree number', sep = ' '))
}else{
  print(paste(user, 'is not a sqaurefree number', sep = ' '))
}

##q8 swapping values of variables

x = readline(prompt = 'enter value: ')
y = readline(prompt = 'enter value: ')
z = readline(prompt = 'enter value: ')

z = x
x = y
y = z


print(x)
print(y)
print(z)


##Q10

score_range = as.integer(readline(prompt = 'enter range of scores: '))
scores = c()
for (i in 1:score_range){
  score = as.numeric(readline(prompt = 'enter scores: '))
  scores = c(scores, score)
}

for (i in scores){
  x = max(scores)
  y = min(scores)
  if(i > 100){
    print(paste(i, 'is greater than 100', sep = ' '))
  }
}
print(paste(x, 'is the highest score', sep = ' '))
print(paste(y, 'is the lowest score', sep = ' '))

##average of scores
f = mean(scores)
print(paste('the average of the scores is', f, sep = ' '))

##second highest score
arranged_scores = c(sort(scores))
new_scores = c()
for(i in arranged_scores){
  x <- arranged_scores[length(arranged_scores)-1]
}
print(paste(x, 'is the second highest score', sep = ' '))
