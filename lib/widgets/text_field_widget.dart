import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextFieldWidget extends GetView<GetxController> {
  final kFillColor = Colors.white;
  const CustomTextFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 20),
          filled: true,
          fillColor: kFillColor,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.grey)),
          suffixIcon: const Icon(Icons.search),
          hintText: 'Search Arewa Stylists...',
          hintStyle: const TextStyle(color: Colors.grey)),
    );
  }
}
