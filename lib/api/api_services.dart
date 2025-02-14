import 'dart:convert';

import 'package:meal_app/model/meal_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  String apiKey = "https://www.themealdb.com/api/json/v1/1/search.php?s=";

  Future<List<Meals>> fetchData(String query) async {
    final response = await http.get(Uri.parse("$apiKey$query"));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      if (data["meals"] != null) {
        return List<Meals>.from(
            data["meals"].map((meal) => Meals.fromJson(meal)));
      } else {
        return [];
      }
    } else {
      throw Exception("Cant' load data from meals");
    }
  }
}
