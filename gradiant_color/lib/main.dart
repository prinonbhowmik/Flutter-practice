import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  MyHomeState createState() => MyHomeState();

}

class MyHomeState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gradiant color"),
        flexibleSpace:Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors:[
                  Colors.red,
                  Colors.white60
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft
            ),
          ),
        ),
      ) ,
    
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors:[
                Colors.pink,
                Colors.black
              ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft
          ),
        ),
      ),
    );
  }
}

