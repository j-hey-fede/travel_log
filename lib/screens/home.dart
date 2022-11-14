import 'package:flutter/material.dart';
import 'package:travel_log/widgets/profile_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: const [
          ProfileCard(),
        ],
      ),
    );
  }
}
