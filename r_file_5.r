###creating functions
year_of_birth = as.integer(readline(prompt = 'enter your year of birth: '))
present_year = as.integer(readline(prompt =  'enter present year: '))
age_func = function(year_of_birth, present_year){
  age = present_year - year_of_birth
  print(age)
}
age_func(year_of_birth, present_year)



##factorial function for texts
factorial_func = function(x){
  count_val = 1:nchar(x)
  fac = 1
  for ( i in count_val){
    fac  = i * fac 
  }
  print(fac)
}
factorial_func('barry')

##factorial function for values
x = as.integer(readline(prompt = 'enter value: '))
facc = 1
fac_func = function(x){
  for ( i in 1:x){
    facc = i * facc
  }
  print(facc)
}
fac_func(x)


