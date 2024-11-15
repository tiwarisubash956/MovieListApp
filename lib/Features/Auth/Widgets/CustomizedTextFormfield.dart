import 'package:flutter/material.dart';

class CustomizedTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String? Function(String?)? validator;

  const CustomizedTextField(
      {super.key,
      required this.controller,
      required this.label,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: validator,
        style: const TextStyle(
          color: Colors.white, // Change the text color here
          fontSize: 16, // Optional: Change the font size
        ),
        cursorColor: Colors.red,
        obscureText: label == "password",
        controller: controller,
        decoration: InputDecoration(
            labelStyle: const TextStyle(color: Colors.white),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            border: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.red, width: BorderSide.strokeAlignOutside)),
            labelText: label));
  }
}
