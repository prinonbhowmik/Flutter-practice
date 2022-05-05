import 'package:flutter/material.dart';
import 'contact.dart';
import 'recent.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("PhoneBook"),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
            ],
            bottom: const TabBar(tabs: [
              Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Text('Recent',
                      style: TextStyle(fontSize: 12))),
              Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Text('Contact',
                      style: TextStyle(fontSize: 12))),
            ],),
          ),
          body: TabBarView(
            children: [
              recent(),contact()
            ],
          ),
        ),
      ),
    );
  }
}



