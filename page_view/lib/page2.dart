import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  const page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        children: [
          Image.asset("images/img2.png",height: size.height/4,),

          const Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Text('Page 02',
                  style: TextStyle(fontSize: 22,color: Colors.blue)
              )
          ),
        ],
      ),
    );
  }
}
