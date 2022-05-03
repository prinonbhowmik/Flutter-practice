import 'package:flutter/material.dart';
import 'SecondPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      );

  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: CircleAvatar(
         radius: 50,
         child: GestureDetector(
           child: const Hero(tag: "add",
               child: Icon(
                 Icons.add_a_photo,
                 size: 50,
               ),
           ),
           onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
             },
         ),
       ),
     ),
   );
  }
}
