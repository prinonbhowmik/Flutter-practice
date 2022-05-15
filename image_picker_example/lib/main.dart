import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyDesignPage createState() => MyDesignPage();
}

class MyDesignPage extends State<MyHomePage> {
  late File _image;
  Future CameraImage () async{
    var image = await ImagePicker().pickImage(source: ImageSource.camera);

    setState(() {
      _image = image as File;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Expanded(
                flex: 2,
                  child: Container(
                    color: Colors.black12,
                    height: double.maxFinite,
                    width: double.maxFinite,
                    child: _image==null?Text("No image selected"):Image.file(_image),
                  )
              ),
              Expanded(
                flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                        onPressed: (){CameraImage();},
                        child: Icon(Icons.camera_alt),
                      ),
                      SizedBox(width: 20),
                      FloatingActionButton(
                        onPressed: (){},
                        child: Icon(Icons.photo),
                      ),
                    ],
                  )
              )
            ],
          ),
        )
    );
  }
}

