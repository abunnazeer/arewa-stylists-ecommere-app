import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavigationWidget extends GetView<GetxController> {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: GNav(
        activeColor: Colors.purple,
        iconSize: 35,
        gap: 8,
        color: Colors.grey,
        tabBorderRadius: 15,
        tabBackgroundColor: Colors.purple.withOpacity(0.1),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        tabs: const [
          GButton(icon: Icons.home_outlined, text: 'Home'),
          GButton(icon: Icons.list_alt, text: 'Category'),
          GButton(icon: Icons.rss_feed_outlined, text: 'Status'),
          GButton(icon: Icons.shopping_cart_outlined, text: 'Cart'),
          GButton(icon: Icons.account_circle, text: 'Account'),
        ],
      ),
    );
  }
}
