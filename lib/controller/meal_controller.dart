import 'package:flutter/material.dart';
import 'package:meal_app/api/api_services.dart';
import 'package:meal_app/model/meal_model.dart';

class MealProvider with ChangeNotifier {
  ApiService apiService = ApiService();
  List<Meals> meals = [];
  bool isLoading = false;

  MealProvider() {
    fetchData('burger');
  }

  Future<void> fetchData(String query) async {
    isLoading = true;
    notifyListeners();

    meals = await apiService.fetchData(query);
    isLoading = false;
    notifyListeners();
  }
}
