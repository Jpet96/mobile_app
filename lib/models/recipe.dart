import 'package:flutter/foundation.dart';

enum Complexity { Newbie, Rookie, Chef }

enum Affordability { Cheap, Affordable, Luxurious }

class Recipe {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isVegan;
  final bool isVeggie;

 const Recipe(
      {@required this.id,
      @required this.categories,
      @required this.title,
      @required this.imageUrl,
      @required this.ingredients,
      @required this.steps,
      @required this.duration,
      @required this.complexity,
      @required this.affordability,
      @required this.isVegan,
      @required this.isVeggie});
}
