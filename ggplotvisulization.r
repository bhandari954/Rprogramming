library(tidyverse)
library(dplyr)
library(ggplot2)
library(gapminder)



gapminder_1952 <- gapminder %>%
  filter(year == 1952)

# Change to put pop on the x-axis and gdpPercap on the y-axis
ggplot(gapminder_1952, aes(x = gdpPercap, y = lifeExp)) +
  geom_point()

ggplot(gapminder_1952, aes(x = pop, y = gdpPercap)) +
  geom_point()


# Create a scatter plot with pop on the x-axis and lifeExp on the y-axis
ggplot(gapminder_1952,aes(x=pop,y=lifeExp))+geom_point()

# Change this plot to put the x-axis on a log scale
ggplot(gapminder_1952, aes(x = pop, y = lifeExp)) +
  geom_point()+scale_x_log10()


# Scatter plot comparing pop and gdpPercap, with both axes on a log scale
ggplot(gapminder_1952,aes(x=pop,y=gdpPercap))+geom_point()+
  scale_x_log10()+scale_y_log10()


# Scatter plot comparing pop and lifeExp, with color representing continent
ggplot(gapminder_1952,aes(x=pop,y=lifeExp,color=continent))+
  geom_point()+scale_x_log10()

# Add the size aesthetic to represent a country's gdpPercap
ggplot(gapminder_1952, aes(x = pop, y = lifeExp, color = continent,size=gdpPercap)) +
  geom_point() +
  scale_x_log10()

# Scatter plot comparing pop and lifeExp, faceted by continent
ggplot(gapminder_1952,aes(x=pop,y=lifeExp))+geom_point()+scale_x_log10()+facet_wrap(~continent)

# Scatter plot comparing gdpPercap and lifeExp, with color representing continent
# and size representing population, faceted by year
ggplot(gapminder,aes(x=gdpPercap,y=lifeExp,color=continent,size=pop))+
  scale_x_log10()+geom_point()+facet_wrap(~year)