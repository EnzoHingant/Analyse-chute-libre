# Simulation de Chute Libre : Modélisation et Analyse du Bruit

Ce projet implémente une simulation numérique en Python permettant d'étudier le mouvement d'une chute libre (ou d'un lancer vertical). L'objectif principal est de confronter un modèle théorique idéal à des données expérimentales simulées intégrant des incertitudes de mesure (bruit gaussien).

## 1. Objectifs du Projet
- Modéliser les équations horaires du mouvement uniformément varié.
- Simuler des données de mesure réalistes en ajoutant un bruit aléatoire.
- Analyser l'impact du bruit sur la lecture des graphiques de position et de vitesse.
- Démontrer la robustesse des modèles physiques face aux erreurs expérimentales.

## 2. Physique du Problème
En l'absence de frottements fluides, l'objet est soumis uniquement à son poids. Selon la deuxième loi de Newton, son accélération est constante : $\vec{a} = \vec{g}$.

### Équations théoriques :
- **Accélération :** $a_y = -g$
- **Vitesse :** $v_y(t) = -g \cdot t + v_0$
- **Position :** $y(t) = -\frac{1}{2}g \cdot t^2 + v_0 \cdot t + y_0$

*Où $g = 9.81 \, m/s^2$, $v_0$ est la vitesse initiale et $y_0$ la position initiale.*

[Image of Kinematic equations for constant acceleration]

## 3. Implémentation Numérique
Le projet utilise les bibliothèques standards de la donnée en Python :
- **NumPy** : Calcul vectoriel et génération de nombres aléatoires pour le bruit.
- **Matplotlib** : Visualisation des données et rendu des graphiques.

Le bruit est généré via une distribution normale (Gaussienne), simulant ainsi l'imprécision d'un capteur réel ou d'un pointage vidéo manuel.

## 4. Analyse des Graphiques

### Courbe de Position (Parabole)
Le graphique de la position montre une trajectoire parabolique. Les points bruités fluctuent autour de la courbe théorique. L'analyse montre que même avec un bruit visible, la tendance parabolique permet d'identifier clairement la nature du mouvement.

### Courbe de Vitesse (Linéaire)
Le graphique de la vitesse présente une décroissance linéaire. 
- **Pente :** Elle représente l'accélération de la pesanteur ($-g$).
- **Points :** La répartition aléatoire des points autour de la droite confirme l'absence de biais systématique dans la mesure simulée.



## 5. Structure du Code
Le notebook est organisé comme suit :
1. Définition des paramètres physiques ($g, v_0, y_0$).
2. Génération du vecteur temps et calcul des valeurs théoriques.
3. Injection du bruit aléatoire sur les vecteurs de données.
4. Tracé des graphiques comparatifs avec `matplotlib`.

## 6. Installation et Utilisation
Pour exécuter ce notebook, vous devez disposer d'un environnement Python avec les dépendances suivantes :

```bash
pip install numpy matplotlib
