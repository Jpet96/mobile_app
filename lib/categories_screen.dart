import 'package:flutter/material.dart';
import 'data.dart';
import 'category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Title'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
      children: CATEGORIES
          .map(
              (catData) =>
              CategoryItem(
                id: catData.id,
                title: catData.title,
                color: catData.color,

              )
      ) // map
          .toList(),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    ),
    );
  }
}