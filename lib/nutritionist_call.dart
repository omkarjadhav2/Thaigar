import 'package:flutter/material.dart';

class NutritionistScreen extends StatelessWidget {
  final List<Nutritionist> nutritionists = [
    Nutritionist(
      name: 'Rahul Singh',
      address: 'Parel, mumbai 400012',
      image: 'assets/images/nutritionist1.jpg',
    ),
    Nutritionist(
      name: 'Jay verma',
      address: 'Prabhadevi, mumbai 400012',
      image: 'assets/images/nutritionist1.jpg',
    ),
    // Add more nutritionists...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nutritionists'),
      ),
      body: ListView.builder(
        itemCount: nutritionists.length,
        itemBuilder: (context, index) {
          return NutritionistListItem(nutritionist: nutritionists[index]);
        },
      ),
    );
  }
}

class Nutritionist {
  final String name;
  final String address;
  final String image;

  Nutritionist({required this.name, required this.address, required this.image});
}

class NutritionistListItem extends StatelessWidget {
  final Nutritionist nutritionist;

  NutritionistListItem({required this.nutritionist});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(nutritionist.image),
      ),
      title: Text(nutritionist.name),
      subtitle: Text(nutritionist.address),
      trailing: IconButton(
        icon: Icon(Icons.call),
        onPressed: () {
          // Implement calling functionality
          // Example: launch("tel://123456789");
        },
      ),
    );
  }
}
