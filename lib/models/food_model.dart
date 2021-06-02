import 'dart:convert';

class FoodModel {
  int id;
  String title;
  String category;
  String imageUrl;
  bool isVegeterian;
  bool isVegan;

  FoodModel({
    required this.id,
    required this.title,
    required this.category,
    required this.imageUrl,
    required this.isVegeterian,
    required this.isVegan,
  });

  FoodModel copyWith({
    int? id,
    String? title,
    String? category,
    String? imageUrl,
    bool? isVegeterian,
    bool? isVegan,
  }) {
    return FoodModel(
      id: id ?? this.id,
      title: title ?? this.title,
      category: category ?? this.category,
      imageUrl: imageUrl ?? this.imageUrl,
      isVegeterian: isVegeterian ?? this.isVegeterian,
      isVegan: isVegan ?? this.isVegan,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'category': category,
      'imageUrl': imageUrl,
      'isVegeterian': isVegeterian,
      'isVegan': isVegan,
    };
  }

  factory FoodModel.fromMap(Map<String, dynamic> map) {
    // print("has id? ${map.containsKey('id')}");
    // print("has title? ${map.containsKey('title')}");
    // print("has category? ${map.containsKey('category')}");
    // print("has urlField? ${map.containsKey('urlField')}");
    // print("has isVegeterian? ${map.containsKey('isVegeterian')}");
    // print("has vegan? ${map.containsKey('isVegan')}");
    return FoodModel(
      id: map['id'],
      title: map['title'],
      category: map['category'],
      imageUrl: map['urlField'],
      isVegeterian: map['isVegeterian'],
      isVegan: map['isVegan'],
    );
  }

  String toJson() => json.encode(toMap());

  factory FoodModel.fromJson(String source) =>
      FoodModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FoodModel(id: $id, title: $title, category: $category, imageUrl: $imageUrl, isVegeterian: $isVegeterian, isVegan: $isVegan)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FoodModel &&
        other.id == id &&
        other.title == title &&
        other.category == category &&
        other.imageUrl == imageUrl &&
        other.isVegeterian == isVegeterian &&
        other.isVegan == isVegan;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        category.hashCode ^
        imageUrl.hashCode ^
        isVegeterian.hashCode ^
        isVegan.hashCode;
  }
}
