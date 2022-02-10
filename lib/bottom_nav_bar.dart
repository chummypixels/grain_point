import 'package:flutter/material.dart';
import 'package:grain_point/SalesScreen.dart';
import 'package:grain_point/outletScreen.dart';
import 'package:grain_point/user_home_screen/home.dart';

import 'profile.dart';
import 'theme/appstyle.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final _widgetOptions = [
    const UserHomeScreen(),
    const OutletScreen(),
    const SalesScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: _widgetOptions,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.receipt_long_outlined), label: 'Outlets'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: 'Sales'),
            BottomNavigationBarItem(
                icon: Icon(Icons.perm_identity_outlined), label: 'Profile'),
          ],
          selectedLabelStyle: TextStyle(
            fontSize: 12,
            letterSpacing: 0.8,
            height: 1.5,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
          onTap: _onItemTapped,
        ));
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
