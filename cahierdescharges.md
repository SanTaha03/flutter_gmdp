
# Cahier des charges - Jeu du Pendu

## 1. Contexte
Le jeu du Pendu est un classique qui consiste à deviner un mot en proposant des lettres, avec un nombre limité de tentatives. Ce projet vise à créer une version simple du jeu en utilisant Dart/Flutter pour une application desktop ciblant les plateformes GNU/Linux, Windows et macOS.

## 2. Objectifs
- Développer une application de jeu du Pendu permettant aux utilisateurs de jouer de manière interactive.
- Fournir une interface utilisateur intuitive pour une expérience de jeu fluide.
- Enregistrer et afficher l'historique des parties jouées avec les résultats (victoire/défaite).

## 3. Acteurs et périmètre du système
### Acteurs
- Utilisateur : La personne qui joue au jeu du Pendu.

### Périmètre du système
Le système doit permettre aux utilisateurs de :
- Démarrer une nouvelle partie avec un mot choisi aléatoirement.
- Deviner des lettres pour progresser dans le jeu.
- Consulter l'historique des parties précédentes avec les résultats.

## 4. Dictionnaire des données
Aucune donnée spécifique à définir pour ce projet.

## 5. Exigences/Spécifications
1. L'application doit fournir une interface utilisateur claire et facile à utiliser pour jouer au jeu du Pendu.
2. Au début de chaque partie, l'application choisit un mot aléatoire parmi une liste prédéfinie.
3. Le joueur a 10 tentatives pour deviner le mot.
4. Le mot à deviner est affiché avec des underscores pour chaque lettre non devinée.
5. Le joueur peut proposer des lettres pour deviner le mot.
6. Le système doit indiquer le nombre de tentatives restantes.
7. Un historique des parties doit être conservé avec les résultats (victoire/défaite).

## 6. Prestations attendues
### Version 1.0
- Application fonctionnelle avec les fonctionnalités de base.
- Documentation utilisateur comprenant des instructions d'installation et d'utilisation.
- Cahier des charges détaillant les spécifications du système.
- Code source hébergé sur un dépôt Git (GitHub/GitLab) avec un README contenant les instructions d'installation et les liens vers le cahier des charges et la documentation.

## 7. Annexes
### Documents de conception
- Aucun document de conception supplémentaire n'est requis pour ce projet.

### Autres ressources utiles
- Le guide d'élaboration du cahier des charges "Expression des besoins pour le SI" de Yves Constantinidis, publié chez Eyrolles (2022).
