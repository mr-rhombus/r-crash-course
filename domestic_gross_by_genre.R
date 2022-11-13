# Create a boxplot depicting Gross % in the US by movie genre. Factor in the budget (size)
# and the studio that released the movie (color)

# Load data
getwd()
setwd("C:/Users/611391/Documents/Learning/R/Data")
df <- read.csv('Section6-Homework-Data.csv')

# Explore data
head(df)
summary(df)
str(df)

# Plot
library(ggplot2)
genre_subset <- c('action', 'adventure', 'animation', 'comedy', 'drama')
studio_subset <- c('Buena Vista Studios', 'Fox', 'Paramount Pictures', 'Sony', 'Universal', 'WB')
df_plot <- df[df$Genre %in% genre_subset & df$Studio %in% studio_subset,]
p <- ggplot(data=df_plot, aes(x=Genre, y=Gross...US))
p + geom_jitter(aes(color=Studio, size=Budget...mill.)) + geom_boxplot(alpha=0.7) + 
  ylab('Gross % US') +
  ggtitle('Domestic Gross % by Genre') +
  theme(plot.title = element_text(size=20),
        
        axis.title.x = element_text(color='Blue', size=20),
        axis.title.y = element_text(color='Blue', size=20),
        
        text = element_text(family='Comic Sans MS'))

