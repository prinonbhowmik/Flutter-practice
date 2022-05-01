import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Stack Positioned"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: ListView(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                overflow: Overflow.visible,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: size.height / 3,
                    width: size.width / 2,
                    // Neumorphic design
                    decoration:  BoxDecoration(
                      //borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade500,
                          offset: const Offset(4.0, 4.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0,
                        ),
                        const BoxShadow(
                          color: Colors.white,
                          offset: Offset(-4.0, -4.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0,
                        ),
                      ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("images/messi.jpeg"),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  const Positioned(
                      right: 20,
                      bottom: 25,
                      child: CircleAvatar(
                        child: Icon(Icons.camera_alt_outlined),
                        radius: 25,
                      )),
                ],
              ),
              const Image(image: NetworkImage("https://image.shutterstock.com/image-photo/business-woman-drawing-global-structure-260nw-1006041130.jpg"))
            ],

          ),
        ),
      ),
    );
  }
}
