import 'package:flutter/material.dart';

class page1 extends StatelessWidget {
  const page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Column(
         children: [
           Image.asset("images/img1.png",height: size.height/2,),

           const Padding(
               padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
               child: Text('Page 01',
                   style: TextStyle(fontSize: 22,color: Colors.purple)
               )
           ),
         ],
      ),
    );
  }
}
