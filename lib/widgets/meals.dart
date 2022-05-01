import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/data.dart';
import 'package:flutter_complete_guide/widgets/meal_item.dart';
import '../models/recipe.dart';

class Meals extends StatelessWidget {
  static const routeName = '/category-meals';

  //final String categoryID;
  // final String categoryTitle;

  // const Meals( this.categoryID, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryID = routeArgs['id'];
    final categoryMeals = RECIPES.where((recipe) {
      return recipe.categories.contains(categoryID);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(title: categoryMeals[index].title,
            imageUrl: categoryMeals[index].imageUrl,
            duration: categoryMeals[index].duration,
            affordability: categoryMeals[index].affordability,
            complexity: categoryMeals[index].complexity,
            id: categoryMeals[index].id,



          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
