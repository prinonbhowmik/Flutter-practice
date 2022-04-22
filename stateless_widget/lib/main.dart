import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
//Stateless widget means when any action occurs like onPress, no change will happen on ui

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
          //centerTitle: true, (centerTitle is used for move appbar title in center)
          leading: Icon(Icons.menu),
          actions: [
            IconButton(icon: Icon(Icons.exit_to_app),
                onPressed:()
                { showToast(context,"Exit Button pressed");}
                )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Center>[
            Center(child: Text("StateLess Example",textAlign: TextAlign.center)),
          ],
        ),
      )
    );
  }

  void showToast(BuildContext context,String message){
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        fontSize: 16.0
    );
  }
}


