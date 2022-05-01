import 'package:flutter/material.dart';
import 'favourites_screen.dart';
import 'categories_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = [
    {'page': CategoriesScreen(), 'title': 'Categories'},
    {'page': FavouritesScreen(), 'title': 'Favourite Recipes',},

  ];

  int _selectedPageIndex = 0;




  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;

    });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage ,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,

        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.shifting, // commment out maybe
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            tooltip: ('Categories'),
          ),
          BottomNavigationBarItem(
          backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            tooltip: ('Favourites'),
          )
        ],
      ),
    );
  }
}
