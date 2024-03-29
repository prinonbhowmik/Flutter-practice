import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Column Practice",
      debugShowCheckedModeBanner: false,
      home: MyDesignPage(),
    );
  }
}

class MyDesignPage extends StatefulWidget {
  const MyDesignPage({Key? key}) : super(key: key);

  @override
  _MyDesignPage createState() => _MyDesignPage();
}

/*class DesignPage extends StatefulWidget{
  const DesignPage({Key? key}) : super(key: key);

  @override
  _DesignPage createState() => _DesignPage();

}*/

class _MyDesignPage extends State<MyDesignPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text('Call',
                        style: (TextStyle(color: Colors.greenAccent))),
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.only(
                          left: 45, top: 10, right: 35, bottom: 20),
                      // Neumorphic design
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        //borderRadius: BorderRadius.circular(15),
                        shape: BoxShape.circle,
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
                      child: Icon(
                        Icons.call,
                        color: Colors.greenAccent,
                      )),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text('Message',
                        style: (TextStyle(color: Colors.blueAccent))),
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      margin: const EdgeInsets.only(
                          left: 25, top: 10, right: 25, bottom: 20),
                      // Neumorphic design
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        //borderRadius: BorderRadius.circular(15),
                        shape: BoxShape.circle,
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
                      child: const Icon(
                        Icons.message_outlined,
                        color: Colors.blueAccent,
                      )),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text('Mail',
                        style: (TextStyle(color: Colors.redAccent))),
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.only(
                          left: 35, top: 10, right: 45, bottom: 20),
                      // Neumorphic design
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        //borderRadius: BorderRadius.circular(15),
                        shape: BoxShape.circle,
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
                      child: Icon(
                        Icons.mail_outline,
                        color: Colors.redAccent,
                      )),
                ],
              )
            ],
          ),
            ],
          )),
    );
  }
}

/*class _DesignPage extends State<DesignPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

      ),
    )
  }
}*/
