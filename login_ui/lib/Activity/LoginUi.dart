// TODO Implement this library.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({Key? key}) : super(key: key);

  @override
  _LoginUiState createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Theme.of(context).colorScheme.background,
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
    );
  }
}
