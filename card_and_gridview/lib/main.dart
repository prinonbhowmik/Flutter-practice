import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

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
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return SafeArea(
       child: Scaffold(
         body: GridView.count(
           crossAxisCount: 2,
           mainAxisSpacing: 10,
           crossAxisSpacing: 10,
           children: [
             Card(
               margin: const EdgeInsets.fromLTRB(20,20,2,5),
               elevation: 10,
               shape: const RoundedRectangleBorder(
                 borderRadius: BorderRadius.only(topLeft: Radius.circular(20))
               ),
               child: Container(
                 height: 200,
                 width: 200,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: const [
                     Image(
                       height: 100,
                         width: 100,
                         image: NetworkImage("https://cdn3.iconfinder.com/data/icons/vector-icons-for-mobile-apps-2/512/Settings_black-512.png")),
                     Padding(
                         padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                         child: Text('Settings',
                         )
                     ),
                   ],
                 ),
               ),
             ),
             Card(
               margin: const EdgeInsets.fromLTRB(2,20,20,5),
               elevation: 10,
               shape: const RoundedRectangleBorder(
                 borderRadius: BorderRadius.only(topRight: Radius.circular(20))
               ),
               child: Container(
                 height: 200,
                 width: 200,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: const [
                     Image(
                         height: 100,
                         width: 100,
                         image: NetworkImage("https://www.pngkey.com/png/detail/202-2024792_user-profile-icon-png-download-fa-user-circle.png")),
                     Padding(
                         padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                         child: Text('Profile',
                         )
                     ),
                   ],
                 ),
               ),
             ),
             Card(
               margin: EdgeInsets.fromLTRB(20,2,2,5),
               elevation: 10,
               shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))
               ),
               child: Container(
                 height: 200,
                 width: 200,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: const [
                     Image(
                         height: 100,
                         width: 100,
                         image: NetworkImage("https://cdn1.vectorstock.com/i/1000x1000/35/30/wallet-icon-vector-20143530.jpg")),
                     Padding(
                         padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                         child: Text('Wallet',
                         )
                     ),
                   ],
                 ),
               ),
             ),
             Card(
               margin: const EdgeInsets.fromLTRB(2,2,20,5),
               elevation: 10,
               shape: const RoundedRectangleBorder(
                   borderRadius: BorderRadius.only(bottomRight: Radius.circular(20))
               ),
               child: Container(
                 height: 200,
                 width: 200,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: const [
                     Image(
                         height: 100,
                         width: 100,
                         image: NetworkImage("https://www.seekpng.com/png/detail/231-2317179_shopping-cart-icon-transparent-background-shopping-cart-icon.png")),
                     Padding(
                         padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                         child: Text('Cart',
                         )
                     ),
                   ],
                 ),
               ),
             ),
           ],
         ),
   )
   );
  }



}

