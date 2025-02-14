import 'package:flutter/material.dart';
import 'package:meal_app/controller/meal_controller.dart';
import 'package:meal_app/model/meal_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    MealProvider mealProvider = Provider.of<MealProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meal App"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: mealProvider.isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: mealProvider.meals.length,
              itemBuilder: (context, index) {
                Meals meal = mealProvider.meals[index];
                return ListTile(
                  title: Text(
                    meal.strMeal!,
                    style: const TextStyle(color: Colors.black),
                  ),
                  leading: Image.network(meal.strMealThumb!),
                  subtitle: Text(
                    meal.strCategory!,
                    style: const TextStyle(color: Colors.black),
                  ),
                );
              }),
    );
  }
}
