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
  File? _image;
  Future CameraImage () async{
    final image = await ImagePicker().pickImage(source: ImageSource.camera);

    if(image == null) return;

    final ImageTemp = File(image.path);

    setState(() {
      _image = ImageTemp;
    });
  }
  Future GalleryImage () async{
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);

    if(image == null) return;

    final ImageTemp = File(image.path);

    setState(() {
      _image = ImageTemp;
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
                    child: _image==null?const Center(child: Text("No image selected")):Image.file(_image!),
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
                        onPressed: (){GalleryImage();},
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

