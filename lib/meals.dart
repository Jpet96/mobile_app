import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/data.dart';
import 'recipe.dart';


class Meals extends StatelessWidget {

  static const routeName = '/category-meals';

  //final String categoryID;
 // final String categoryTitle;

 // const Meals( this.categoryID, this.categoryTitle);


  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String,String>;
    final categoryTitle = routeArgs['title'];
    final categoryID = routeArgs['id'];
    final categoryMeals = RECIPES.where((recipe)  {
      return recipe.categories.contains(categoryID);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(itemBuilder: (ctx, index) {
        return Text(categoryMeals[index].title);
      },
        itemCount: categoryMeals.length ,
      ),

    );
  }
}
