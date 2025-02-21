
import 'package:flutter/material.dart';
import 'package:hikari/pages/account.dart';
import 'package:hikari/pages/dashboard.dart';
import 'package:hikari/pages/flashcards.dart';
import 'package:hikari/utils/colors.dart';

void main() {
  runApp(const DashboardPage());
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: const TabBarView(
            children: [
              Dashboard(),
              Flashcards(),
              Account(),
            ],
          ),
          bottomNavigationBar: const TabBar(
            labelColor: AppColors.slate900,
            unselectedLabelColor: AppColors.slate600,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.black,
            tabs: [
              Tab(text: 'Dashboard', icon: Icon(Icons.dashboard)),
              Tab(text: 'Flashcards', icon: Icon(Icons.view_carousel)),
              Tab(text: 'Account', icon: Icon(Icons.account_circle)),
            ],
          ),
        ),
      ),
    );
  }
}

