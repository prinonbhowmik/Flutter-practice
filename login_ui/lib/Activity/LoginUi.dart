// TODO Implement this library.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginUi extends StatefulWidget{
  const LoginUi({Key? key}) : super(key: key);

  @override
  _LoginUiState createState() => _LoginUiState();

}

class _LoginUiState extends State<LoginUi>{
  final _formKey = GlobalKey<State>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget> [
            Text("Sign in",
            style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 40),
            ),
            SizedBox(
              height: 40,
            ),

          ],
        ),
      ),
    );
  }
}
