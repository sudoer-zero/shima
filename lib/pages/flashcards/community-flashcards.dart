import 'package:flutter/material.dart';
import 'package:hikari/utils/colors.dart';

class CommunityFlashcards extends StatefulWidget {
  const CommunityFlashcards({super.key});

  @override
  State<CommunityFlashcards> createState() => _CommunityFlashcardsState();
}

class _CommunityFlashcardsState extends State<CommunityFlashcards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Community Flashcards',
          style: TextStyle(
            color: AppColors.slate900,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const Center(
        child: Text('Community flashcards coming soon'),
      ),
    );
  }
}
