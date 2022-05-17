import 'package:flutter/cupertino.dart';
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
   return SafeArea(
       child: Scaffold(
         body: CustomScrollView(
           slivers: [
             SliverAppBar(
               expandedHeight: 200,
               pinned: true,
               flexibleSpace: FlexibleSpaceBar(
                 title: Text("Lionel Messi",textAlign: TextAlign.left,),
                 background: Image.network("https://static.messi.com/wp-content/uploads/2022/03/Messi-News-Artwork.png"),
               ),
             ),
             SliverList(delegate: SliverChildListDelegate([
               addList("Fc Barcelona", "Captain, Striker"),
               addList("Argentina", "Captain, Striker"),
               addList("Paris-saint germain", "Key player, Striker"),
               addList("Fc Barcelona", "Captain, Striker"),
               addList("Argentina", "Captain, Striker"),
               addList("Paris-saint germain", "Key player, Striker"),
               addList("Fc Barcelona", "Captain, Striker"),
               addList("Argentina", "Captain, Striker"),
               addList("Paris-saint germain", "Key player, Striker"),
               addList("Fc Barcelona", "Captain, Striker"),
               addList("Argentina", "Captain, Striker"),
               addList("Paris-saint germain", "Key player, Striker"),
             ])
             )
           ],
         ),
       )
   );
  }
}

Widget addList(String title,String subtitle){
  return ListTile(
    title: Text(title),
    subtitle: Text(subtitle),
    leading: CircleAvatar(child: Text(title[0])),
  );
}

