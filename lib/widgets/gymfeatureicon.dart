import 'package:flutter/material.dart';

class Gymfeatureicon extends StatelessWidget {
  final IconData icon;
  final String label;

  Gymfeatureicon({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 20.0, color: Colors.deepOrange), // Adjust the size as needed
        const SizedBox(height: 5.0),
        Text(label, style: const TextStyle(color: Colors.white,fontSize: 11),),
      ],
    );
  }
}