import 'package:flutter/material.dart';
import 'package:shoes_app/pages/home_page.dart';
import 'package:shoes_app/pages/profil_page.dart';
import 'package:shoes_app/pages/cart_page.dart';
import 'package:shoes_app/widget/bottom_nav_bar.dart';

import 'fav_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const HomePage(),
    const FavPage(),
    CartPage(),
    const ProfilPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          MyBottomNavBar(onTabChange: (index) => navigateBottomBar(index)),
      body: _pages[_selectedIndex],
    );
  }
}
