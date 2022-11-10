import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currIndex = 0;

  void _updateIndex(int value) {
    setState(() {
      _currIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currIndex,
      onTap: _updateIndex,
      selectedItemColor: const Color.fromARGB(255, 17, 176, 184),
      selectedFontSize: 14,
      unselectedFontSize: 12,
      iconSize: 30,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.create,
          ),
          label: "Create",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.explore,
          ),
          label: "Explore",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
          ),
          label: "Settings",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.share,
          ),
          label: "Share",
        ),
      ],
    );
  }
}
