import 'package:flutter/material.dart';
import 'package:travel_log/widgets/bottom_navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Let's build a Travel Journal with Flutter and SQFLITE",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
