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

class MyHomePage extends StatefulWidget{
  @override
  DesignPage createState() => DesignPage();
}

class DesignPage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
   return SafeArea(
       child: Scaffold(
         body: Center(
           child: GestureDetector(
             onTap: (){
               showModalBottomSheet(context: context, builder: (context){
                 return Container(
                   height: 350,
                   child: ListView(
                     children: [
                       addList("One", "This is one"),
                       addList("Two", "This is two"),
                       addList("Three", "This is three"),
                       addList("Four", "This is four"),
                       addList("Five", "This is five"),
                       addList("Six", "This is six"),
                     ],
                   ),
                 );
               });
             },
             child: Container(
                 alignment: Alignment.center,
                 height: 50,
                 width: 50,
                 margin: EdgeInsets.only(
                     left: 45, top: 10, right: 35, bottom: 20),
                 // Neumorphic design
                 decoration: BoxDecoration(
                   color: Colors.grey[300],
                   //borderRadius: BorderRadius.circular(15),
                   shape: BoxShape.rectangle,
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
                 ),
                 child: Text(
                   "Show",
                 )),
           ),
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
