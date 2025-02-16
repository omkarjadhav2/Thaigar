import 'package:flutter/material.dart';
import 'dart:ui';

class BlurredBackground extends StatelessWidget {
  final String imagePath; // Path to the background image

  const BlurredBackground({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        // Add any other widgets or layers on top of the background if needed
      ],
    );
  }
}
