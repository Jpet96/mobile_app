import 'package:flutter/material.dart';
import '/screens/recipe_details_screen.dart';
import '/widgets/meals.dart';
import 'screens/categories_screen.dart';
import 'widgets/meals.dart';
import 'screens/tabs_screen.dart';


import 'screens/categories_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uni Grub',
      theme: ThemeData(
      primarySwatch: Colors.white70,
        accentColor: Colors.redAccent,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
         bodyText2: TextStyle(
          color:  Color.fromRGBO(20, 51, 51, 1),
        ),
          subtitle1: TextStyle(
            fontSize: 20,
          fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,

        )
        )

      ),
      //home: CategoriesScreen() ,
      routes: {

        '/' : (ctx) => TabsScreen(),
        Meals.routeName: (ctx) => Meals(),
        RecipeDetailScreen.routeName: (ctx) => RecipeDetailScreen(),

       },
      onGenerateRoute: (settings) {
        print(settings.arguments);
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen()
        );
        },
      //onUnknownRoute: ,
      
    );
  }
}
