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
      child: ListView(
        children: [
          const ProfileCard(),
          Image.network(
            'https://images.unsplash.com/photo-1518638150340-f706e86654de?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fG1leGljb3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1400&q=60',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.0),
            child: Text(
              'Tulum, México',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
