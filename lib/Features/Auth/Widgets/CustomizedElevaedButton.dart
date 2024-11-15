import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onpressed;
  final String label;

  const CustomElevatedButton(
      {super.key, required this.onpressed, required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          side: const BorderSide(color: Colors.white),
          padding: const EdgeInsets.symmetric(
              horizontal: 20, vertical: 12), // Padding
          elevation: 5, // Shadow elevation
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Rounded corners
          ),
          foregroundColor: Colors.white,
          backgroundColor: Colors.black),
      onPressed: onpressed,
      child: Text(label),
    );
  }
}
