import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GameNavbar(),
    );
  }
}

class GameNavbar extends StatefulWidget {
  const GameNavbar({super.key});

  @override
  State<GameNavbar> createState() => _GameNavbarState();
}

class _GameNavbarState extends State<GameNavbar> {
  int _selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            selectedIndex: _selectedIndex,
            backgroundColor: Colors.red,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          
            extended: true,
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                icon: Icon(Icons.favorite_border),
                selectedIcon: Icon(Icons.favorite),
                label: Text('First'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.bookmark_border),
                selectedIcon: Icon(Icons.book),
                label: Text('Second'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.star_border),
                selectedIcon: Icon(Icons.star),
                label: Text('Third'),
              ),
            ],
          ),
          const VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('selectedIndex: $_selectedIndex'),
                const SizedBox(height: 20),
                const SizedBox(height: 10),
             
              ],
            ),
          ),
        ],
      ),
    );
  }
}
