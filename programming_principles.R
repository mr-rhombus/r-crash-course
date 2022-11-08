## DATA TYPES
# integer
x <- 2L
typeof(x)

# double
y <- 2
typeof(y)
z <- 2.5
typeof(z)

# complex
a <- 3 + 2i
typeof(a)

# character
b <- 'blah blah'
typeof(b)

# logical
c <- T
typeof(c)
d <- F
typeof(d)


## USING VARIABLES
a <- 10
b <- 5
c <- a + b

var1 <- 2.5
var2 <- 4
result = var1/var2

ans <- sqrt(var2)

greeting <- 'hello'
name <- 'ben'
msg <- paste(greeting, name)


## LOGICAL VARS AND OPERATORS
4 < 5
10 > 100
4 == 5
# ==, !=, <, >, <=, >=, !, |, &, isTRUE(x)

result <- 4 < 5
result
typeof(result)

res2 <- !TRUE
res2

isTRUE(result)


## WHILE LOOP
counter <- 1
while(counter < 12){
  print(counter)  # need print to send to console from inside loop
  counter <- counter + 1
}


## FOR LOOP
for(i in 1:5){
  print(i)
}

1:5  # This represents a VECTOR in R!


## IF STATEMENT
# Generate random # from normal dist
rm(ans)  # remove a var
a <- rnorm(1)
if(a > 1){
  ans <- 'greater than 1!'
} else if(a >= -1){
    ans <- 'between -1 and 1'
} else{
    ans <- 'less than -1'
}

