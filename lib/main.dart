import 'package:flutter/material.dart';

import 'screens/filters_screen.dart';
import 'screens/tabs_screen.dart';
import 'screens/categories_screen.dart';
import 'screens/meal_detail_screen.dart';
import 'screens/category_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              title: TextStyle(fontSize: 24, fontFamily: 'RobotoCondensed'),
            ),
      ),
      routes: {
        '/': (_) => TabsScreen(),
        CategoryMealsScreen.routeName: (_) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (_) => MealDetailScreen(),
        FilterScreen.routeName: (_) => FilterScreen(),
      },
      onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (ctx) => CategoriesScreen()),
    );
  }
}
