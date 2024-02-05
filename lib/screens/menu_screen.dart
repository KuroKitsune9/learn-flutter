// ignore_for_file: unused_field

import 'package:belajar_flutter/form/input_form.dart';
import 'package:belajar_flutter/screens/home_screen.dart';
import 'package:belajar_flutter/screens/list_galaxy.dart';
import 'package:belajar_flutter/screens/second_screen.dart';
import 'package:belajar_flutter/screens/third_screen.dart';
import 'package:flutter/material.dart';

class NavigaitonMenu extends StatefulWidget {
  const NavigaitonMenu({super.key});

  @override
  State<NavigaitonMenu> createState() => _NavigaitonMenuState();
}

class _NavigaitonMenuState extends State<NavigaitonMenu> {
  int _selectedTab = 0;

  List _pages = [HomeScreen(), ListGalaxyScreen(), BelajarForm()];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.numbers), label: "Second"),
          BottomNavigationBarItem(icon: Icon(Icons.numbers), label: "Third"),
        ],
      ),
    );
  }
}
