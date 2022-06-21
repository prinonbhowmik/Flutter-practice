import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHeadDrawer extends StatefulWidget {
  const MyHeadDrawer({Key? key}) : super(key: key);

  @override
  _MyHeadDrawerState createState() => _MyHeadDrawerState();
}

class _MyHeadDrawerState extends State<MyHeadDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[700],
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/profile.jpg"),
              )
            ),
          ),
          Text("Emon Hossain Munna", style: TextStyle(color: Colors.white, fontSize: 20),),
          Text("emondd4@gmail.com", style: TextStyle(color: Colors.grey[200], fontSize: 14),),
        ],
      ),
    );
  }
}
