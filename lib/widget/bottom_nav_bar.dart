// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: GNav(
        debug: false,
        haptic: false,
        mainAxisAlignment: MainAxisAlignment.center,
        backgroundColor: Colors.white,
        tabBorderRadius: 50,
        gap: 4,
        onTabChange: (value) => onTabChange!(value),
        color: Colors.grey[300],
        activeColor: Colors.black,
        tabs: const [
          GButton(
            icon: Icons.home_outlined,
            iconSize: 30,
            text: "Home",
          ),
          GButton(
            iconSize: 40,
            icon: Icons.favorite_border_outlined,
            text: "Fav",
          ),
          GButton(
            iconSize: 40,
            icon: Icons.shopping_cart_outlined,
            text: "Cart",
          ),
          GButton(
            iconSize: 40,
            icon: Icons.person_2_outlined,
            text: "Profile",
          ),
        ],
      ),
    );
  }
}
