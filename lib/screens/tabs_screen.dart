import 'package:flutter/material.dart';

import 'categories_screen.dart';
import 'favorites_screen.dart';
import 'categories_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Widget> _tabWidgets = [CategoriesScreen(), FavoritesScreen()];

  int _selectedTabIndex = 0;

  void _onTabSelected(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meals'),
      ),
      body: _tabWidgets[_selectedTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTabSelected,
        currentIndex: _selectedTabIndex,
        selectedItemColor: Colors.white,
        backgroundColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text('Categories')),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), title: Text('Favorites')),
        ],
      ),
    );
  }
}
