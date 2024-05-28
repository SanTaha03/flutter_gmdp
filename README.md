# Le Jeu du Pendu

Une version simple du jeu du Pendu développée avec Flutter.

## Introduction

Explorez une adaptation ludique du célèbre jeu du Pendu, où la découverte de chaque lettre mal devinée rapproche inexorablement le joueur du sort funeste du pendu.

## Fonctionnalités Principales

- Lancement d'une nouvelle partie avec un mot aléatoire
- Saisie d'un mot personnalisé pour commencer à jouer
- Suivi du nombre de tentatives restantes
- Affichage de l'historique des parties avec les résultats (victoire/défaite)
- Illustration progressive du pendu selon les réponses incorrectes

## Images

[image](https://github.com/SanTaha03/flutter_gmdp/assets/114475615/f34fae76-d247-4aba-a3cf-528ecda200d7)


## Pour Démarrer

### Prérequis

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Dart SDK](https://dart.dev/get-dart)
- Un éditeur de code (VS Code, Android Studio, etc.)

### Installation

1. Clonez le dépôt :
   ```bash
   git clone https://github.com/votreutilisateur/jeu_du_pendu.git
   cd jeu_du_pendu

2. Récupérez les packages Flutter :
    ```bash
    flutter pub get

## Exécution de l'Application
Connectez un émulateur ou un appareil physique.

3. Exécutez l'application :
    ```bash
    flutter run

Structure du Code
- main.dart : Le point d'entrée principal de l'application.
- GamePage : Le widget avec état qui gère la logique principale du jeu et l'interface utilisateur.
- CustomPainter : Un peintre personnalisé pour dessiner la figure du pendu.
- GameResult : Une classe pour suivre le résultat de chaque partie.

## Comment Jouer ?

- Entrez un mot personnalisé ou commencez une partie avec un mot aléatoire.
- Devinez les lettres en les tapant.
Vous avez 10 tentatives pour deviner le mot correctement.
- Le jeu se termine lorsque vous devinez le mot ou que vous manquez de tentatives.
- Consultez l'historique des parties pour voir vos résultats précédents.

## Contributions
Les contributions sont les bienvenues ! Veuillez forker le dépôt et soumettre une pull request pour toute fonctionnalité, amélioration ou correction de bug.

## Licence
Ce projet est sous licence MIT - voir le fichier LICENSE pour plus de détails.

## Fonctionnalités à Venir
- Possibilité de jouer à 2 sur un même écran.
- Système de sauvegarde pour pouvoir reprendre le cours de sa partie et enregistrer les scores.
