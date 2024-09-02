#Charger les Packages et le Jeu de Données

#Package library(ggplot2)

install.packages("ggplot2")#Installation du package
library(ggplot2)

#Charger le jeu de données "mpg"

data(mpg)
View(mpg)

#Exploration des données 

# Affichage des 10 premières lignes 
head(mpg,n=10)
tail(mpg,n=10)

# Vérification du jeu de données
str(mpg)

# Statistiques descriptives
summary(mpg)

#3. Histogramme de la Consommation en Ville (cty)

ggplot(mpg, aes(x = cty)) +
  geom_histogram(binwidth = 1, fill = "#87CEEB", color = "Red") +
  labs(title = "consommation en ville",
       x = "Consommation en (mpg)",
       y = "Fréquence") +
  theme_minimal()


#Boxplot de la Consommation sur Autoroute (hwy) par Type de Carburant

ggplot(mpg, aes(x = fl, y = hwy, fill = fl)) +
  geom_boxplot() +
  labs(title = "Boxplot de la consommation sur autoroute / type de carburant",
       x = "Type de carburant",
       y = "Consommation sur autoroute (mpg)") +
  theme_minimal() +
  scale_fill_brewer(palette = "Set3")


#Scatter Plot de la Consommation en Ville par la Consommation sur Autoroute

ggplot(mpg, aes(x = cty, y = hwy, color = fl)) +
  geom_point(size = 3) +
  geom_smooth(method = "lm", se = FALSE, color = "blue") +
  labs(title = "Scatter plot de la consommation en ville / laconsommation sur autoroute",
       x = "Consommation en ville (mpg)",
       y = "Consommation sur autoroute (mpg)") +
  theme_minimal() +
  scale_color_brewer(palette = "Set1")



















