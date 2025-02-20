
import 'package:flutter/material.dart';

class Flashcards extends StatefulWidget {
  const Flashcards({super.key});

  @override
  State<Flashcards> createState() => _FlashcardsState();
}

class _FlashcardsState extends State<Flashcards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TODO: Make the font big and bold.
        // TODO: Add three cards with icons on the top and title and description on the bottom.
        // TODO: Add three pages to handle [my flashcards, premade, and community].
        // TODO: First implement the pre-made flashcards.
        // TODO: In the pre-made flashcards start with Hiragana Characters.
        title: Text("Flashcards"),
      ),
    );
  }
}
