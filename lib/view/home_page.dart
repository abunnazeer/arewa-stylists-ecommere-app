import 'package:arewa_stylist/controller/home_page_controller.dart';
import 'package:arewa_stylist/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/bottom_navigation_bar.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigationWidget(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
            child: Row(
              children: [
                Expanded(child: CustomTextFieldWidget()),
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey)),
                  child: const SizedBox(
                    height: 45,
                    width: 45,
                    child: Icon(Icons.shopping_cart_sharp,
                        size: 40, color: Colors.blueAccent),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
