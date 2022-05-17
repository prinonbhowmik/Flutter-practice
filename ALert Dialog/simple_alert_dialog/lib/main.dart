import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alert Dialog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text("Alert Dialog"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
             showDialog(context: context, builder: (context){
              return AlertDialog(
                title: Text("Alert dialog"),
                content: Text("This is alert dialog"),
                actions: [
                  RaisedButton(onPressed: (){Navigator.pop(context);},child: Text("Ok"),)
                ],
              );
            });
          },
          child: Text("Click"),
        ),
      ),
    );
  }
}
