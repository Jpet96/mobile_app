import 'package:flutter/material.dart';
import 'package:recipeapp/categories_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UniGrub',
      theme: ThemeData(
      primarySwatch: Colors.red,
      ),
      home: const CategoriesScreen() ,
    );
  }
}
