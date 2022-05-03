import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: const Hero(
            tag: "add",
            child: Icon(
              Icons.add_a_photo,
              size: 100,
            ),
          ),
        ),
      ),
    );
  }
}
