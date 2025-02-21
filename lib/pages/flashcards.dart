import 'package:flutter/material.dart';
import 'package:hikari/pages/flashcards/community-flashcards.dart';
import 'package:hikari/pages/flashcards/my-flashcards.dart';
import 'package:hikari/pages/flashcards/pre-made-flashcards.dart';
import 'package:hikari/utils/colors.dart';

class Flashcards extends StatefulWidget {
  const Flashcards({super.key});

  @override
  State<Flashcards> createState() => _FlashcardsState();
}

class _FlashcardsState extends State<Flashcards> {
  final List<FlashcardOption> _options = [
    FlashcardOption(
      title: 'My Flashcards',
      subtitle: 'Manage your own flashcards',
      destination: const MyFlashcards(),
    ),
    FlashcardOption(
      title: 'Pre-Made Flashcards',
      subtitle: 'Learn with pre-made flashcards',
      destination: const PreMadeFlashcards(),
    ),
    FlashcardOption(
      title: 'Community Flashcards',
      subtitle: 'Explore flashcards from the community',
      destination: const CommunityFlashcards(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TODO: First implement the pre-made flashcards.
        // TODO: In the pre-made flashcards start with Hiragana Characters.
        title: Text(
          "Flashcards",
          style: TextStyle(
            color: AppColors.slate900,
            fontSize: 30.0,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 8),
        child: Column(
          children: _options.map((option) => _buildFlashcardOption(option)).toList(),
        ),
      ),
    );
  }

  Widget _buildFlashcardOption(FlashcardOption option) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => option.destination,
          ),
        );
      },
      child: Card.outlined(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(Icons.view_carousel, color: AppColors.slate800),
              title: Text(
                option.title,
                style: TextStyle(
                  color: AppColors.slate800,
                  fontWeight: FontWeight.w600
                ),
              ),
              subtitle: Text(
                option.subtitle,
                style: TextStyle(
                  color: AppColors.slate600,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FlashcardOption {
  final String title;
  final String subtitle;
  final Widget destination;

  FlashcardOption({
    required this.title,
    required this.subtitle,
    required this.destination,
  });
}
