import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../pages/logs/logs_page.dart';
import '../pages/profile/profile_page.dart';
import '../pages/settings/settings_page.dart';
import '../pages/tools/tools_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    LogsScreen(),
    ProfileScreen(),
    ToolsScreen(),
    SettingsScreen()
  ];

  void onItemTapped(int val) {
    setState(() {
      _currentIndex = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("home"),
      //   backgroundColor: Colors.black,
      // ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[500],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Logs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            // icon: FaIcon(
            //   FontAwesomeIcons.screwdriverWrench,
            // ),
            icon: Icon(Icons.settings_accessibility_sharp),
            label: 'Tools',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
