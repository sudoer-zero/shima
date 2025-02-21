import 'package:flutter/material.dart';
import 'package:hikari/utils/colors.dart';

class PreMadeFlashcards extends StatefulWidget {
  const PreMadeFlashcards({super.key});

  @override
  State<PreMadeFlashcards> createState() => _PreMadeFlashcardsState();
}

class _PreMadeFlashcardsState extends State<PreMadeFlashcards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pre-Made Flashcards',
          style: TextStyle(
            color: AppColors.slate900,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const Center(
        child: Text('Browse pre-made flashcard sets'),
      ),
    );
  }
}
