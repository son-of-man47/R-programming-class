#assignment operator in R <-

#datatypes 
#boolean, integers, float, strings

#standard datatypes in R
#vector, lists, matrix, arrays, factor, dataframes

#vectors are the building blocks for all R datatypes 'c' must be preseent
#while naming a vector

b <- c("nani", "jane", "kobi")
print(b)
print(class(b))
print(b[2])

#classwork to print even names and odd names

even_names <- c()
odd_names <- c()
name_count <- c()
names <- c("James", "Lekee", "Zola", "Tolu", "Bolaji", "Tumumi", "Tolupej")
for (i in names){
 b <- nchar(i)
  name_count <- c(name_count, b)
    if (b%%2==0){
      even_names <- c(even_names, i)
    } else if(b%%2!=0){
      odd_names <- c(odd_names, i)
    }
  }

print(name_count)
name_data <- data.frame(
  names = names,
  counts = name_count
)
print(name_data)
print(even_names)
print(odd_names)
