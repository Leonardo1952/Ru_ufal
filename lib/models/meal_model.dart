import 'dart:convert';

import 'food_model.dart';

class MealModel {
  int id;
  String type;
  FoodModel food;
  DateTime date;
  MealModel({
    required this.id,
    required this.type,
    required this.food,
    required this.date,
  });

  MealModel copyWith({
    int? id,
    String? type,
    FoodModel? food,
    DateTime? date,
  }) {
    return MealModel(
      id: id ?? this.id,
      type: type ?? this.type,
      food: food ?? this.food,
      date: date ?? this.date,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'type': type,
      'food': food.toMap(),
      'date': date.millisecondsSinceEpoch,
    };
  }

  factory MealModel.fromMap(Map<String, dynamic> map) {
    return MealModel(
      id: map['id'],
      type: map['type'],
      food: FoodModel.fromMap(map['food']),
      date: DateTime.fromMillisecondsSinceEpoch(map['date']),
    );
  }

  String toJson() => json.encode(toMap());

  factory MealModel.fromJson(String source) =>
      MealModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MealModel(id: $id, type: $type, food: $food, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MealModel &&
        other.id == id &&
        other.type == type &&
        other.food == food &&
        other.date == date;
  }

  @override
  int get hashCode {
    return id.hashCode ^ type.hashCode ^ food.hashCode ^ date.hashCode;
  }
}
