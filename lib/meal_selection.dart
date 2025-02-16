import 'package:flutter/material.dart';

class MealPlanningScreen extends StatefulWidget {
  @override
  _MealPlanningScreenState createState() => _MealPlanningScreenState();
}

class _MealPlanningScreenState extends State<MealPlanningScreen> {
  List<Meal> breakfastDishes = [
    Meal(name: 'Scrambled Eggs', protein: 6, carbs: 1, calories: 78),
    Meal(name: 'Whole Wheat Toast', protein: 2, carbs: 12, calories: 65),
    Meal(name: 'Orange Juice', protein: 1, carbs: 26, calories: 112),
  ];

  List<Meal> lunchDishes = [
    Meal(name: 'Grilled Chicken Salad', protein: 20, carbs: 10, calories: 250),
    Meal(name: 'Brown Rice', protein: 5, carbs: 45, calories: 220),
    Meal(name: 'Steamed Broccoli', protein: 3, carbs: 6, calories: 50),
  ];

  List<Meal> dinnerDishes = [
    Meal(name: 'Salmon Fillet', protein: 22, carbs: 0, calories: 200),
    Meal(name: 'Quinoa', protein: 8, carbs: 40, calories: 220),
    Meal(name: 'Mixed Vegetables', protein: 4, carbs: 10, calories: 60),
  ];

  List<Meal> selectedBreakfast = [];
  List<Meal> selectedLunch = [];
  List<Meal> selectedDinner = [];

  void _updateNutritionInfo() {
    double totalProtein = 0;
    double totalCarbs = 0;
    double totalCalories = 0;

    for (Meal meal in selectedBreakfast + selectedLunch + selectedDinner) {
      totalProtein += meal.protein;
      totalCarbs += meal.carbs;
      totalCalories += meal.calories;
    }

    // Update UI with new nutrition information
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Nutrition Information'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Total Protein: ${totalProtein.toStringAsFixed(2)} g'),
            Text('Total Carbs: ${totalCarbs.toStringAsFixed(2)} g'),
            Text('Total Calories: ${totalCalories.toStringAsFixed(2)} kcal'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meal Planning'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildMealTypeSelector('Breakfast', breakfastDishes, selectedBreakfast),
              SizedBox(height: 20.0),
              _buildMealTypeSelector('Lunch', lunchDishes, selectedLunch),
              SizedBox(height: 20.0),
              _buildMealTypeSelector('Dinner', dinnerDishes, selectedDinner),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMealTypeSelector(String mealType, List<Meal> dishes, List<Meal> selectedMeals) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          mealType,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10.0),
        ElevatedButton(
          onPressed: () {
            _showDishSelectionDialog(context, mealType, dishes, selectedMeals);
          },
          child: Text('Select $mealType Dishes'),
        ),
        SizedBox(height: 10.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: selectedMeals.map((meal) {
            return ListTile(
              title: Text(meal.name),
              subtitle: Text('Protein: ${meal.protein}g, Carbs: ${meal.carbs}g, Calories: ${meal.calories}kcal'),
            );
          }).toList(),
        ),
      ],
    );
  }

  Future<void> _showDishSelectionDialog(BuildContext context, String mealType, List<Meal> dishes, List<Meal> selectedMeals) async {
    List<Meal> selectedDishes = await showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Select $mealType Dishes'),
        content: SingleChildScrollView(
          child: Column(
            children: dishes.map((meal) {
              return CheckboxListTile(
                title: Text(meal.name),
                value: selectedMeals.contains(meal),
                onChanged: (selected) {
                  setState(() {
                    if (selected!) {
                      selectedMeals.add(meal);
                    } else {
                      selectedMeals.remove(meal);
                    }
                  });
                },
              );
            }).toList(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context, selectedMeals);
            },
            child: Text('OK'),
          ),
        ],
      ),
    );

    setState(() {
      if (selectedDishes != null) {
        selectedMeals.clear();
        selectedMeals.addAll(selectedDishes);
        _updateNutritionInfo();
      }
    });
  }
}

class Meal {
  final String name;
  final double protein;
  final double carbs;
  final double calories;

  Meal({required this.name, required this.protein, required this.carbs, required this.calories});
}
