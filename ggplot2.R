library(ggplot2)

# Establish workdir
getwd()
setwd("C:/Users/611391/Documents/Learning/R/Data")

# Load in data
movies <- read.csv('P2-Movie-Ratings.csv')
head(movies)

# Explore data
colnames(movies) <- c('Film', 'Genre', 'CriticRating', 'AudienceRating', 'BudgetMillions', 'Year')
head(movies)
str(movies)
summary(movies)


## Factors
# Categorical vars
movies$Year <- factor(movies$Year)
summary(movies)
movies$Film <- factor(movies$Film)
movies$Genre <- factor(movies$Genre)
summary(movies)


## Aesthetics
p <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, 
                        color=Genre, size=BudgetMillions, alpha=0.7))

# ggplot create an object! We then plot LAYERS on top of one another to generate the viz
p + geom_point()
p + geom_line()

# Override aesthetics
q <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating,
                             color=Genre, size=BudgetMillions, alpha=0.7))
q + geom_point(aes(size=CriticRating))
q + geom_point(aes(color=BudgetMillions))

# Mapping vs Setting
r <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))
r + geom_point()
# 1) Mapping - MAP a color to a var
r + geom_point(aes(color=Genre))
# 2) Setting - SET a specific color
r + geom_point(color="DarkGreen")
# ERROR
r + geom_point(aes(color='DarkGreen'))


## Histograms and Density charts
# Histogram
s <- ggplot(data=movies, aes(x=BudgetMillions))
s + geom_histogram(binwidth=10, aes(fill=Genre), color='Black')

# Density chart
s + geom_density(aes(fill=Genre), position='stack')


## Stacking layer tips
t <- ggplot(data=movies, aes(x=AudienceRating))
t + geom_histogram(binwidth=10, fill='White', color='Blue')
# is the same as...
t2 <- ggplot(data=movies)
t2 + geom_histogram(binwidth=10, aes(x=AudienceRating), fill='White', color='Blue')


## Statistical Transformations
# "line of best fit"
u <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, color=Genre))
u + geom_point() + geom_smooth(fill=NA)


## Boxplot
u2 <- ggplot(data=movies, aes(x=Genre, y=AudienceRating, color=Genre))
u2 + geom_jitter(size=0.7) + geom_boxplot(size=1.2, alpha=0.5)


## Facets
v <- ggplot(data=movies, aes(x=BudgetMillions))
v + geom_histogram(binwidth=10, aes(fill=Genre), color='Black') +
  facet_grid(Genre~., scales='free')

w <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, color=Genre))
w + geom_point(size=2) +
  geom_smooth() +
  facet_grid(Genre~Year)


## Coordinates
m <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, size=BudgetMillions,
                             color=Genre))
m + geom_point() + 
  xlim(50,100) +
  ylim(50,100)
# this works well sometimes, but can cut data off in other instances
n <- ggplot(data=movies, aes(x=BudgetMillions))
n + geom_histogram(binwidth=10, aes(fill=Genre), color='Black') +
  ylim(0,50)

# to get around this issue, we can ZOOM instead of LIMIT
n + geom_histogram(binwidth=10, aes(fill=Genre), color='Black') +
  coord_cartesian(ylim=c(0,50))

# Improve facetgrid...
w + geom_point(size=2) +
  geom_smooth() +
  facet_grid(Genre~Year) +
  coord_cartesian(ylim=c(0,100))


## Themes
o <- ggplot(data=movies, aes(x=BudgetMillions))
h <- o + geom_histogram(binwidth=10, aes(fill=Genre), color='Black')
h + 
  xlab('Millions of USD') +
  ylab('Number of Movies') +
  ggtitle('Movie Budget Distribution') +
  theme(axis.title.x = element_text(color='DarkGreen', size=30),
        axis.title.y = element_text(color='Red', size=30),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20),
        
        legend.title = element_text(size=30),
        legend.text = element_text(size=20),
        legend.position = c(1,1),
        legend.justification = c(1,1),
        
        plot.title = element_text(color='DarkBlue', size=40, family='Courier'))
  