import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextFieldWidget extends GetView<GetxController> {
  // ignore: prefer_typing_uninitialized_variables
  final fillColor;
  final String hintText;
  final IconData suffixIcon;
  // ignore: prefer_typing_uninitialized_variables
  final enabledBorder;
  final bool isPassword;

  const CustomTextFieldWidget(
      {required this.enabledBorder,
      required this.hintText,
      required this.suffixIcon,
      this.fillColor,
      required this.isPassword,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 20),
          filled: true,
          fillColor: fillColor,
          enabledBorder: enabledBorder,
          suffixIcon: Icon(suffixIcon),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey)),
      obscureText: isPassword,
    );
  }
}
