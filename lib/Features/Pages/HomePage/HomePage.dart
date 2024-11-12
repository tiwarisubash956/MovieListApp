// ignore_for_file: file_names

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movielistapp/Features/Pages/MovieScreen/Presentation/MoviesScreen.dart';
import 'package:movielistapp/Features/Pages/SearchScreen/Presentation/SearchScreen.dart';

/// The `HomePage` widget serves as the main entry point for displaying the
/// bottom navigation bar and switching between the Movies and Search screens.
@RoutePage()
class HomePage extends StatefulWidget {
  /// Constructor for the `HomePage`.
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// Index to keep track of the currently selected bottom navigation item.
  int _selectedIndex = 0;

  /// List of screens associated with the bottom navigation items.
  final List<Widget> _screens = [
    MoviesPage(), // Screen displaying the list of movies.
    SearchScreen(searchTerm: ""), // Screen for searching movies.
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // Displays the currently selected screen based on `_selectedIndex`.
      body: _screens[_selectedIndex],

      /// Bottom navigation bar with two items: Movies and Search.
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        // Updates the selected index when a bottom navigation item is tapped.
        onTap: (index) => setState(() => _selectedIndex = index),

        // Styling the bottom navigation bar items.
        selectedItemColor: Colors.red, // Color for the selected item.
        unselectedItemColor: Colors.white, // Color for unselected items.
        backgroundColor:
            Colors.black, // Background color of the navigation bar.

        items: const [
          // Bottom navigation item for the Movies screen.
          BottomNavigationBarItem(
            label: 'Movies',
            icon: Icon(Icons.movie),
          ),
          // Bottom navigation item for the Search screen.
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(FontAwesomeIcons.searchengin),
          ),
        ],
      ),
    );
  }
}
