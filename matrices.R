## MATRICES

## Build a matrix

# matrix()
my.data <- 1:20
A <- matrix(my.data, nrow=4, ncol=5)
A
A[2:3,]

B <- matrix(my.data, 4, 5, byrow=T)
B

# rbind()
r1 <- c('I', 'am', 'happy')
r2 <- c('What', 'a', 'day')
r3 <- c(1,2,3)
C <- rbind(r1, r2, r3)
C

# cbind()
c1 <- 1:5
c2 <- -1:-5
D <- cbind(c1, c2)
D


## Naming dimensions

# Named vectors
Charlie <- 1:5
names(Charlie) <- c('a', 'b', 'c', 'd', 'e')
Charlie
Charlie['d'] == Charlie[4]

# Clear names
names(Charlie) <- NULL

# Naming matrix dimensions
temp_vec <- rep(c('a', 'B', 'zZ'), each=3)
M <- matrix(temp_vec, 3, 3)

rownames(M) <- c('How', 'Are', 'You')
colnames(M) <- c('x', 'y', 'z')

M['Are', 'y'] = 0
M


## Matrix operations
round(FieldGoals/Games, 1)
round(MinutesPlayed/Games, 0)
round(Points/Games, 1)
round(FieldGoals/FieldGoalAttempts*100, 2)


# Visualizing with Matplot()
matplot(t(FieldGoals/Games),
        type='b',
        pch=15:18,
        col=c(1:4,6))
legend('bottomleft', inset=0.01, legend=Players, col=c(1:4,6), pch=15:18, horiz=F)


## Subsetting
x <- c('a', 'b', 'c', 'd', 'e')
x[c(1,5)]

Games[1:3, 6:10]

# Save matrix when extracting single row/col/value
Games[1,]
Games[1,,drop=F]
Games[1,5,drop=F]

# Visualizing subsets
Data <- MinutesPlayed[1:3,]
matplot(t(Data),
        type='b',
        pch=15:18,
        col=c(1:4,6))
legend('bottomleft', inset=0.01, legend=Players[1:3], col=c(1:4,6), pch=15:18, horiz=F)


## Creating functions
myplot <- function(table, rows=1:10, cols=1:10){
  Data <- table[rows,cols,drop=F]
  matplot(t(Data),
          type='b',
          pch=15:18,
          col=c(1:4,6))
  legend('bottomleft', 
         inset=0.01,
         legend=Players[rows],
         col=c(1:4,6),
         pch=15:18, horiz=F)
}

myplot(Points)


## Analyze the data!

# Salary
myplot(Salary)
myplot(Salary/Games)
myplot(Salary/FieldGoals)

# In-Game Metrics
myplot(MinutesPlayed)
myplot(Points)

#In-Game Metrics Normalized
myplot(FieldGoals/Games)
myplot(FieldGoals/FieldGoalAttempts)
myplot(FieldGoalAttempts/Games)
myplot(Points/Games)
