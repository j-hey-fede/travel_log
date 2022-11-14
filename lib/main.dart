import 'package:flutter/material.dart';
import 'package:travel_log/screens/main_wrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // TODO: Custom App bar and logo, Entry UI, design form to create posts //

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WanderLog',
      home: MainScreen(),
    );
  }
}
