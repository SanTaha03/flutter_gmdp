import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jeu du Pendu',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const PenduGamePage(),
    );
  }
}

class PenduGamePage extends StatefulWidget {
  const PenduGamePage({Key? key}) : super(key: key);

  @override
  _PenduGamePageState createState() => _PenduGamePageState();
}

class _PenduGamePageState extends State<PenduGamePage> {
  final List<String> words = ['flutter', 'dart', 'hangman', 'game'];
  late String currentWord;
  late String displayedWord;
  int remainingAttempts = 10;
  bool isGameOver = false;

  @override
  void initState() {
    super.initState();
    _startNewGame();
  }

  void _startNewGame() {
    setState(() {
      currentWord = '';
      displayedWord = '';
      remainingAttempts = 10;
      isGameOver = false;
      _startGameWithRandomWord();
    });
  }

  void _checkLetter(String letter) {
    setState(() {
      if (!isGameOver) {
        bool letterFound = false;
        String newDisplayedWord = '';
        for (int i = 0; i < currentWord.length; i++) {
          if (currentWord[i] == letter) {
            newDisplayedWord += letter;
            letterFound = true;
          } else {
            newDisplayedWord +=
                displayedWord[i] != '_' ? currentWord[i] : '_';
          }
        }
        displayedWord = newDisplayedWord;
        if (!letterFound) {
          remainingAttempts--;
          if (remainingAttempts == 0) {
            isGameOver = true;
          }
        }
        if (!displayedWord.contains('_')) {
          isGameOver = true;
        }
      }
    });
  }

  void _startGameWithRandomWord() {
    setState(() {
      currentWord = words[Random().nextInt(words.length)];
      displayedWord = '_' * currentWord.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jeu du Pendu'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (isGameOver)
                ElevatedButton(
                  onPressed: _startNewGame,
                  child: const Text('Nouvelle Partie'),
                ),
              if (!isGameOver)
                Column(
                  children: [
                    Text(
                      'Tentatives restantes: $remainingAttempts',
                      style: const TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      displayedWord,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    if (isGameOver)
                      Text(
                        displayedWord.contains('_') ? 'Vous avez perdu!' : 'Félicitations, vous avez gagné!',
                        style: TextStyle(
                          fontSize: 20,
                          color: displayedWord.contains('_') ? Colors.red : Colors.green,
                        ),
                      ),
                    if (!isGameOver)
                      Wrap(
                        spacing: 10,
                        children: List.generate(
                          26,
                          (index) {
                            final letter = String.fromCharCode('a'.codeUnitAt(0) + index);
                            return GestureDetector(
                              onTap: () {
                                _checkLetter(letter);
                              },
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  letter,
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
