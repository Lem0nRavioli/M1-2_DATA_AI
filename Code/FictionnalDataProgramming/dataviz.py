#Importer les librairies nécessaires
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt


# Charger votre dataset
df = pd.read_csv('analyse.csv')

# Paramétrage de l’affichage
pd.set_option('display.max_columns', None)
pd.set_option('display.max_rows', 1000)
pd.set_option('display.max_colwidth', None)

# Afficher le dataset
df.head()
# Pie chart Nutri score :Répartition des produits par nutriscore

plt.figure(figsize=(8,8))
plt.title('Répartition des Nutriscores', size=20)
df['nutrition_grade_fr'].value_counts(normalize=True).sort_index().plot(kind='pie',autopct='%1.0f%%')
plt.axis('equal')
plt.show()

# Bar chart Categories : Répartition des produits par catégories
plt.figure(figsize=(16,10))
plt.title('Répartition des catégories (%)', size=20)
plt.xlabel('Catégories', size=15, fontweight='bold')
plt.ylabel('Proportion (%)', size=15, fontweight='bold')
df['renamed_category'].value_counts(normalize=True).plot(kind='bar')

#plt.axis('equal')
plt.show()
# Calculer la matrice de correlation
correlation_matrix = df.corr()
# Créer le heatmap
plt.figure(figsize = (10,8))
sns.heatmap(correlation_matrix, cmap = 'coolwarm')
plt.show()