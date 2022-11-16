import 'package:flutter/material.dart';
import 'package:travel_log/screens/create_screen.dart';
import 'package:travel_log/screens/explore_screen.dart';
import 'package:travel_log/screens/home.dart';
import 'package:travel_log/screens/settings_screen.dart';
import 'package:travel_log/screens/share_screen.dart';
import 'package:travel_log/widgets/app_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currIndex = 2;
  final List _screens = [
    CreateScreen(),
    ExploreScreen(),
    HomeScreen(),
    SettingsScreen(),
    ShareScreen(),
  ];

  void _updateIndex(int value) {
    setState(() {
      _currIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.grey,
          leading: const Icon(
            Icons.travel_explore,
            size: 32,
            color: Colors.white70,
          ),
          title: const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: CustomAppBar(),
          ),
          actions: [
            InkWell(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(
                  Icons.add_circle,
                  size: 32,
                  color: Colors.white70,
                ),
              ),
            )
          ],
        ),
        body: _screens[_currIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currIndex,
          selectedItemColor: const Color.fromARGB(255, 17, 176, 184),
          selectedFontSize: 14,
          unselectedFontSize: 12,
          onTap: _updateIndex,
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
        ));
  }
}
