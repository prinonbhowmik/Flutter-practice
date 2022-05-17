import 'package:flutter/material.dart';

import 'Four.dart';
import 'Three.dart';
import 'One.dart';
import 'Two.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<MyHomePage> {
  var _currentState = 0;
  final pages = [const One(),Two(),Three(),Four()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            elevation: 10,
            selectedItemColor: Colors.white60,
            currentIndex: _currentState,
            items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(
                backgroundColor: Colors.blue,
                icon: Icon(Icons.shopping_cart),label: 'Cart'),
            BottomNavigationBarItem(
                backgroundColor: Colors.pink,
                icon: Icon(Icons.settings),label: 'Settings'),
            BottomNavigationBarItem(
                backgroundColor: Colors.teal,
                icon: Icon(Icons.person),label: 'Profile'),
          ],
          onTap: (index){
              setState(() {
                _currentState = index;
              });
          },
          ),
          body: pages[
            _currentState
          ],
        )
    );
  }
}


