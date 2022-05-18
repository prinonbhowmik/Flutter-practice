import 'package:curved_bottom_navigationbar/Addnew.dart';
import 'package:curved_bottom_navigationbar/Invoice.dart';
import 'package:curved_bottom_navigationbar/Profile.dart';
import 'package:curved_bottom_navigationbar/Transaction.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:curved_bottom_navigationbar/Cart.dart';

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
  var _page = 0;
  final pages = [Addnew(),Cart(),Invoice(),Transaction(),Profile()];

  @override
  Widget build(BuildContext context) {
   return SafeArea(
       child: Scaffold(
         bottomNavigationBar: CurvedNavigationBar(
           index: 0,
           color: Colors.blue,
           backgroundColor: Colors.white,
           buttonBackgroundColor: Colors.blue,
           animationCurve: Curves.easeInOut,
           animationDuration: Duration(milliseconds: 600),
           onTap: (index){
             setState(() {
               _page = index;
             });
           },
           items: [
             Icon(Icons.add,color: Colors.white,),
             Icon(Icons.shopping_cart,color: Colors.white),
             Icon(Icons.list,color: Colors.white),
             Icon(Icons.monetization_on_sharp,color: Colors.white),
             Icon(Icons.person,color: Colors.white),
           ],
         ),
         body: pages[_page],
       )
   );
  }
}

