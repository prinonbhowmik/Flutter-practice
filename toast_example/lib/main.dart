import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        title: Text('Toast'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // Step 3
                Fluttertoast.showToast(
                  msg: "The toast message",
                  toastLength: Toast.LENGTH_SHORT,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.black,
                  textColor: Colors.white,
                  fontSize: 16.0,
                );
              },
              child: const Text(
                'Show Toast Message',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Step 3
                Fluttertoast.showToast(
                  msg: "The toast message",
                  toastLength: Toast.LENGTH_SHORT,
                  timeInSecForIosWeb: 1,
                  gravity: ToastGravity.CENTER,
                  backgroundColor: Colors.black,
                  textColor: Colors.white,
                  fontSize: 16.0,
                );
              },
              child: const Text(
                'Show Center Message',
              ),
            ),
          ],

        ),
      ),

    );
  }
}
