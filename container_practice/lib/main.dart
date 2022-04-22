import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:<Widget> [
                  IconButton(icon: Icon(Icons.menu,color: Colors.white,), onPressed: () {}),
                  Text("Custom Appbar",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      textAlign: TextAlign.center),
                  IconButton(
                    icon: Icon(Icons.add,color: Colors.white,),
                    onPressed: () {},
                    alignment: Alignment.centerRight,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
