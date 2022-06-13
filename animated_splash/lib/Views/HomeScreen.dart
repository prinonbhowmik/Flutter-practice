import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Splash Tutorial"),
      ),
      body: const Center(
        child: Text("This Is Home Screen",style: TextStyle(fontSize: 19.0,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
