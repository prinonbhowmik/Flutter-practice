import 'package:flutter/material.dart';
import 'package:navigation_rail/home.dart';
import 'package:navigation_rail/profile.dart';
import 'package:navigation_rail/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;
  final _pages = [
    Settings(),
    Home(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            backgroundColor: Colors.black87,
              destinations: const [
                NavigationRailDestination(
                    icon: Icon(Icons.settings,color: Colors.white,),
                    label: Text('Settings'),
                  selectedIcon: Icon(Icons.settings,color: Colors.blue,)
                ),
                NavigationRailDestination(
                    icon: Icon(Icons.home_filled,color: Colors.white),
                    label: Text('Home'),
                  selectedIcon: Icon(Icons.home_filled,color: Colors.blue,)
                ),
                NavigationRailDestination(
                    icon: Icon(Icons.person,color: Colors.white),
                    label: Text('Profile'),
                  selectedIcon: Icon(Icons.person,color: Colors.blue,)
                ),
              ],
              selectedIndex: _selectedIndex,
            onDestinationSelected: (val){
                setState(() {
                  _selectedIndex = val;
                });
            },
          ),
          Expanded(child: Container(
            child: _pages[_selectedIndex],
          ))
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
