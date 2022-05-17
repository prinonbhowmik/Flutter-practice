import 'package:flutter/material.dart';

class One extends StatelessWidget {
  const One({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
          "Home",
        style: TextStyle(color: Colors.black,fontSize: 20),
      ),
    );
  }
}
