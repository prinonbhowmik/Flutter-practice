import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Colors.lightBlueAccent,
                Colors.blue,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            )),
          ),
          SafeArea(
            child: Container(
              width: 200.0,
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  DrawerHeader(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1628591857866-90589d6b4e95?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Erick Orosquita",
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ],
                  )),
                  Expanded(
                    child: ListView(
                      children: [
                        _listItem("Home", Icons.home),
                        _listItem("Profile", Icons.person),
                        _listItem("Settings", Icons.settings),
                        _listItem("Log Out", Icons.logout),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: value),
              duration: Duration(milliseconds: 500),
              curve: Curves.easeIn,
              builder: (_, double val, __) {
                return Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..setEntry(0, 3, 200 * val)
                    ..rotateY((pi / 6) * val),
                  child: Scaffold(
                    appBar: AppBar(
                     title: Text("3D Drawer Menu"), 
                    ),
                    body: Center(
                      child: Text("Swipe Right 👉"),
                    ),
                  ),
                );
              }
          ),

          GestureDetector(
            // onTap: (){
            //   setState(() {
            //     value == 0 ? value = 1 : value = 0;
            //   });
            // },

            onHorizontalDragUpdate: (e){
              if(e.delta.dx > 0){
                setState(() {
                  value = 1;
                });
              }else{
                setState(() {
                  value = 0;
                });
              }
            },

          )

        ],
      ),
    );
  }

  Widget _listItem(String title, IconData iconData) {
    return ListTile(
      onTap: () {},
      leading: Icon(
        iconData,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
