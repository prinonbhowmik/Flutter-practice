import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
              children: [
                Expanded(
                    flex: 1,
                    child: Center(
                      child: Image.network(
                        "https://upload.wikimedia.org/wikipedia/en/thumb/4/47/FC_Barcelona_%28crest%29.svg/1200px-FC_Barcelona_%28crest%29.svg.png",
                        height: 100,
                        width: 100,
                      ),
                    )
                ),
                Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter username',
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter password',
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                        ),
                      ],
                    )),
                Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        RaisedButton(

                          color: Colors.red, // background
                          textColor: Colors.white, // foreground
                          onPressed: () {},
                          child: Text('Sign in'),
                        )
                      ],
                    )
                )
              ],
            )
        )
    );
  }

}


