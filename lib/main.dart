import 'package:flutter/material.dart';
import 'package:travel_log/screens/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // TODO: create routes, create fake data, create what a travel log post will look like, design form to create posts //

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WanderLog',
      home: HomeScreen(),
    );
  }
}
