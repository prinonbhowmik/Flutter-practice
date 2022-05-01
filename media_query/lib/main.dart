import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    var screenHeight = MediaQuery.of(context).size.height; //MediaQuery get the height of screen
    var containerHeight = screenHeight/4;

    return SafeArea(
        child: Scaffold(
          body: Center(
            child: Container(
              height: containerHeight,
              width: MediaQuery.of(context).size.height/4,
              color: Colors.redAccent,
            ),
          ),
        )
    );
  }
}


