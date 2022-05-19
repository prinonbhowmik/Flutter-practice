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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbar"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            final snackBar = SnackBar(
                content: Text('This is a snackbar'),
              duration: Duration(seconds: 10),
              action: SnackBarAction(
                label: 'Dismiss',
                onPressed: (){},
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Text("Click Here"),
        ),
      ),
    );
  }
}
