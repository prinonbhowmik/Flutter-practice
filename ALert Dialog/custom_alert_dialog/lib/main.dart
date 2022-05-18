import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
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

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: (){
            showDialog(context: context, builder: (context){
              return Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  overflow: Overflow.visible,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height/2,
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(height: 40),
                            Text("Alert Dialog",style: TextStyle(fontFamily: "Segoe UI",fontWeight: FontWeight.w700,fontSize: 25,color: Colors.black)),
                            SizedBox(height: 20),
                            Text("If you’ve updated to the July 2017 update, AutoSave is enabled by default when you save a file to OneDrive, OneDrive for Business or Sharepoint Online. .",
                              style: TextStyle(fontFamily: "Segoe UI",fontSize: 20,color: Colors.black),)
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      child: CircleAvatar(
                        radius: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                            child: Image.network("https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_500,q_auto:good,w_500/v1/gcs/platform-data-goog/events/download-5_4MSx5H2.png")
                        )
                        ,
                      ),
                      top: -50,
                    )
                  ],
                ),
              );
            });
          },
          child: Text("Click Here"),
        ),
      ),
    );
  }
}
