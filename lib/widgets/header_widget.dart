import 'package:arewa_stylist/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderWidget extends GetView<GetxController> {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
      child: Row(
        children: [
          //SEARCH SECTION ON THE HEADER
          Expanded(
            child: CustomTextFieldWidget(
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              hintText: 'Search Arewa Stylists...',
              suffixIcon: Icons.search,
              //  fillColor: Colors.white,
              isPassword: false,
            ),
          ),
          const SizedBox(width: 10),
          //SHOP CART ON HEADER SECTION
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
    );
  }
}
