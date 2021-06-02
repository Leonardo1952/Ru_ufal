import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ru_ufal/models/food_model.dart';
import 'package:ru_ufal/models/meal_model.dart';

class ApiService {
  final String apiUrl = "http://ruufalagoas.herokuapp.com/api/v1";

  Future<List<MealModel>> getMeals() async {
    Uri? uri = Uri.tryParse("$apiUrl/meals/?format=json");
    // print("uri: $uri");
    List<MealModel> listMeals = [];

    await http.get(uri!, headers: {
      "Accept": "application/json",
      "Access-Control_Allow_Origin": "*"
    }).then((response) async {
      // print("entrou aqui");
      if (response.statusCode == 200) {
        List<dynamic> body = jsonDecode(response.body);
        // print("\nboy $body");

        for (Map m in body) {
          int foodId = m["food"];
          FoodModel? food = await getFoodById(id: foodId);
          MealModel meal = MealModel(
            id: m["id"],
            type: m["type"],
            food: food,
            date: DateTime.parse(m['date']),
          );
          listMeals.add(meal);
        }
        // List<MealModel> list =
        //     body.map((item) => MealModel.fromJson(item)).toList();

      } else {
        throw Exception("Response status: ${response.statusCode}");
      }
    }).onError((error, stackTrace) {
      print("\n error: $error");
      throw Exception("Error");
    });
    return listMeals;
  }

  Future<FoodModel> getFoodById({required int id}) async {
    Uri? uri = Uri.tryParse("$apiUrl/foods/$id");

    late FoodModel foodModel;

    // print("uri: $uri");
    await http.get(
      uri!,
      headers: {
        "Accept": "application/json",
        "Access-Control_Allow_Origin": "*"
      },
    ).then((response) {
      // print("entrou aqui no food");
      if (response.statusCode == 200) {
        dynamic body = jsonDecode(response.body);
        // print("\nboy $body");
        foodModel = FoodModel.fromMap(body);
        // print("food? $foodModel");
        return foodModel;
      } else {
        throw Exception("Response status: ${response.statusCode}");
      }
    }).onError((error, stackTrace) {
      print("\n error: $error, stackTrace: $stackTrace\n");
      throw Exception("Error");
    });
    return foodModel;
    // throw Exception("Error");
  }

  // Future<Cases> getCaseById(String id) async {
  //   final response = await get('$apiUrl/$id');

  //   if (response.statusCode == 200) {
  //     return Cases.fromJson(json.decode(response.body));
  //   } else {
  //     throw Exception('Failed to load a case');
  //   }
  // }

  // Future<Cases> createCase(Cases cases) async {
  //   Map data = {
  //     'name': cases.name,
  //     'gender': cases.gender,
  //     'age': cases.age,
  //     'address': cases.address,
  //     'city': cases.city,
  //     'country': cases.country,
  //     'status': cases.status
  //   };

  //   final Response response = await post(
  //     apiUrl,
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //     },
  //     body: jsonEncode(data),
  //   );
  //   if (response.statusCode == 200) {
  //     return Cases.fromJson(json.decode(response.body));
  //   } else {
  //     throw Exception('Failed to post cases');
  //   }
  // }

  // Future<Cases> updateCases(String id, Cases cases) async {
  //   Map data = {
  //     'name': cases.name,
  //     'gender': cases.gender,
  //     'age': cases.age,
  //     'address': cases.address,
  //     'city': cases.city,
  //     'country': cases.country,
  //     'status': cases.status
  //   };

  //   final Response response = await put(
  //     '$apiUrl/$id',
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //     },
  //     body: jsonEncode(data),
  //   );
  //   if (response.statusCode == 200) {
  //     return Cases.fromJson(json.decode(response.body));
  //   } else {
  //     throw Exception('Failed to update a case');
  //   }
  // }

  // Future<void> deleteCase(String id) async {
  //   Response res = await delete('$apiUrl/$id');

  //   if (res.statusCode == 200) {
  //     print("Case deleted");
  //   } else {
  //     throw "Failed to delete a case.";
  //   }
  // }
}
