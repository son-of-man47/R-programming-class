##integrating functions

fact_func <- function(x){
  str_count <- nchar(x)
  fact <- 1
  for (i in 1:str_count){
    fact <- fact * i
  }
  return(fact)
}

mean_val <- function(fact, x){
  len_x <- nchar(x)
  formular <- fact / len_x
  return(formular)
}

s <- 'jamie'
p <- fact_func(s)
x <- mean_val(p, s)
print(p)
print(x)


##integrating functions for standard deviation

sum_values = function(values){
  sum_vals = 0
  for(i in values){
    sum_vals = sum_vals + i
  }
  return(sum_vals)
}

mean_values = function(sum_vals, values){
  count_values = length(values)
  mean_vals = sum_vals/count_values
  return(mean_vals)
}

mean_val_diff = function(mean_vals, values){
  differences = c()
  for(i in values){
    d = (i - mean_vals) ** 2
    differences = c(differences, d)
  }
  return(differences)
}

sum_diff  = function(differences){
  sum_differences = 0
  for(i in differences){
    sum_differences = sum_differences + i
  }
  return(sum_differences)
}

variance = function(sum_differences, values){
  count_values = length(values)
  v = sum_differences/count_values
  return(v)
}

std_dev = function(v){
  s = v ** (1/2)
  return(s)
}

n  = c(7, 15, 22, 58, 10, 56)
x = sum_values(n)
y = mean_values(x, n)
z = mean_val_diff(y, n)
a = sum_diff(z)
b = variance(a, n)
c = std_dev(b)
print(x)
print(y)
print(z)
print(a)
print(b)
print(c)



##function for quadratic equation

q1 = function(a, c){
  y = 4 * a*c
  return(y)
}
q2 = function(b){
  z = b**2
  return(z)
}
q3 = function(a){
  f = 2*a
  return(f)
}
q4 = function(b){
  g = -b
  return(g)
}
q5 = function(y, z, f, g){
  x = g + ((z - y)/(f) ** (1/2)) 
 
  return(x)
}

a = 7
b= 3
c = 6

d = q1(a, c)
print(d)
e = q2(b)
print(e)
f = q3(a)
print(f)
t = q4(b)
print(t)
m= q5(d, e, f, t)
print(m)

