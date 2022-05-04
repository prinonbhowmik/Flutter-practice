import 'package:flutter/material.dart';

class Two extends StatelessWidget {
  const Two({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
          "Cart",
        style: TextStyle(color: Colors.blue,fontSize: 20),
      ),
    );
  }
}
