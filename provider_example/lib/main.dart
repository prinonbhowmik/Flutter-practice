import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/data.dart';
import 'package:provider_example/receive.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => Data(),
      child: MyApp()));
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
  HomePageDesign createState() => HomePageDesign();
}

class HomePageDesign extends State<MyHomePage> {
  int value = 0;
  _increment(){
    setState(() {
      value++;
    });
  }
  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<Data>(context);
   return SafeArea(
       child: Scaffold(
         body: Center(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text(value.toString(),
                   textAlign: TextAlign.center,
                   style: const TextStyle(fontSize: 30)
               ),
               Text(providerData.value.toString(),
                   textAlign: TextAlign.center,
                   style: const TextStyle(fontSize: 30)
               ),
               RaisedButton(
                   onPressed: (){_increment();},
                 child: const Text('Set State Example'),
               ),
               RaisedButton(
                 onPressed: (){providerData.Increment();},
                 child: const Text('Provider Example'),
               ),
               RaisedButton(
                 onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Receive()));
                 },
                 child: const Text('Change State'),
               )
             ],
           ),
         ),
       )
   );
  }
}

