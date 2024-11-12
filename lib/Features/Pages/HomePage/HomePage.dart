// ignore_for_file: file_names

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movielistapp/Features/Pages/MovieScreen/Presentation/MoviesScreen.dart';
import 'package:movielistapp/Features/Pages/SearchScreen/Presentation/SearchScreen.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
     MoviesPage(),
     SearchScreen(searchTerm: ""),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        selectedItemColor: Colors.red, // Color for selected item
        unselectedItemColor: Colors.white, // Color for unselected items
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            label: 'Movies',
            icon: Icon(Icons.movie),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(FontAwesomeIcons.searchengin),
          ),
        ],
      ),
    );
  }
}
