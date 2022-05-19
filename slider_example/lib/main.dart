import 'package:flutter/material.dart';

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
  var _value = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Text('Flutter',style: TextStyle(fontSize: _value),),
         SizedBox(height: 50),
         Slider(
           min:10,
             max: 50,
             value: _value,
             onChanged: (value){
             setState(() {
               _value = value;
             });
             }
         )
       ],
      ),
    
    );
  }
}
