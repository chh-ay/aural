import 'package:aural/home/pages/aboutUs.page.dart';
import 'package:aural/home/pages/listItem.page.dart';
import 'package:aural/home/pages/profile.page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:aural/globals.dart' as globals;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = [
    const ListItem(),
    const Profile(),
    const AboutUs(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void logoutProcess() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined),
            label: 'Home',
            backgroundColor: globals.globalMaterialTextColor.shade500,
            activeIcon: const Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.account_circle_outlined),
            label: 'Profile',
            backgroundColor: globals.globalMaterialTextColor.shade500,
            activeIcon: const Icon(Icons.account_circle),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.groups_2_outlined),
            label: 'About Us',
            backgroundColor: globals.globalMaterialTextColor.shade500,
            activeIcon: const Icon(Icons.groups_2),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
