import 'dart:io';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  MyDesignPage createState() => MyDesignPage();

}

class MyDesignPage extends State<MyStatefulWidget> {

  DateTime? _dateTime;

  getDate() async{
    DateTime? date =await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(DateTime.now().year),
        lastDate: DateTime(DateTime.now().year+10));

    setState(() {
      _dateTime = date;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  getDate();
                },
                child: _dateTime==null?Text("Choose Date"): Text("${_dateTime!.year}-${_dateTime!.month}-${_dateTime!.day}"),
            )
          ],
        ),
      ),
    );
  }
}


