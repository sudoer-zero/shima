import 'package:flutter/material.dart';
import 'package:hikari/utils/colors.dart';

class MyFlashcards extends StatefulWidget {
  const MyFlashcards({super.key});

  @override
  State<MyFlashcards> createState() => _MyFlashcardsState();
}

class _MyFlashcardsState extends State<MyFlashcards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Flashcards',
          style: TextStyle(
            color: AppColors.slate900,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const Center(
        child: Text('Create and manage your flashcards here'),
      ),
    );
  }
}
