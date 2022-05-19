import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
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
        title: Text('RichText'),
      ),
      body: Center(
         child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
              text: TextSpan(
                // default style
                style: TextStyle(color: Colors.black, fontSize: 20),
                children: [
                  const TextSpan(
                    text: "Don't have account ",
                  ),
                  TextSpan(
                      text: 'Register',
                      style: const TextStyle(
                        color: Colors.blue,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print('Login Text Clicked');
                        }),
                ],
              ),
            ),
          )
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
