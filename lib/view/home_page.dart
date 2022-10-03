import 'package:arewa_stylist/view/product_page.dart';
import 'package:arewa_stylist/widgets/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/bottom_navigation_bar.dart';

class HomePage extends GetView<GetxController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigationWidget(),
      body: Stack(
        children: [
          //PRODUCTS PAGE
          Positioned(
            // top: 20,
            child: ProductPage(),
          ),
          //HEADER PAGE
          const Positioned(
            left: 10,
            right: 10,
            child: HeaderWidget(),
          ),
        ],
      ),
    );
  }
}
