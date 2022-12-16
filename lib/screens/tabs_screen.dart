import 'package:envirement_app/screens/filters_screen.dart';
import 'package:envirement_app/screens/profile/ProfilePage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import '../recycle_data.dart';
import './favorites_screen.dart';
import './categories_screen.dart';
import '../models/recycle.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = '/tabs';

  final List<Meal> favoriteMeals;
  Map<String, bool> _filters = {
    'Plastic': false,
    'Wood': false,
    'WEEE': false,
    'Glass': false,
  };
  List<Meal> _availableMeals = DUMMY_recycle;

  TabsScreen(this.favoriteMeals,);

  void _setFilters(Map<String, bool> filterData) {
  {
      _filters = filterData;

      _availableMeals = DUMMY_recycle.where((meal) {
        if (_filters['Plastic']! && !meal.Plastic) {
          return false;
        }
        if (_filters['Wood']! && !meal.Wood) {
          return false;
        }
        if (_filters['WEEE']! && !meal.WEEE) {
          return false;
        }
        if (_filters['Glass']! && !meal.Glass) {
          return false;
        }
        return true;
      }).toList();
    };
  }


  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late List _pages;
  int _selectIndex = 0;

  @override
  void initState() {
     _pages = [
      {
        'page': CategoriesScreen(),
        'title': 'Categories',
      },
      {
        'page': FavoritesScreen(widget.favoriteMeals),
        'title': 'Your Favorite',
      },
       {
         'page':FiltersScreen(widget._filters,widget._setFilters),
         'title': 'Categories',
       },
       {
         'page': ProfilePage(),
         'title': 'Profile',
       },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectIndex]['title']),backgroundColor: Colors.green,
      ),
      body: _pages[_selectIndex]['page'],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.green,
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.favorite_border, title: 'favorite'),
          TabItem(icon: Icons.filter_alt_rounded, title: 'filters'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        //optional, default as 0
        initialActiveIndex: _selectIndex,
        onTap: (int i) {
          _selectPage(i);
        },
      ),
    );
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty('_pages', _pages));
  }
}
