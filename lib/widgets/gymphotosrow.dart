import 'package:flutter/material.dart';

class GymPhotosRow extends StatelessWidget {
  final List<String> photoPaths;

  GymPhotosRow({required this.photoPaths});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: photoPaths.map((path) => GymPhoto(imagePath: path)).toList(),
      ),
    );
  }
}

class GymPhoto extends StatelessWidget {
  final String imagePath;

  GymPhoto({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      width: 250.0,
      height: 200.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(2.0),
      ),
    );
  }
}
