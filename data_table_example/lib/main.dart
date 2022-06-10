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
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: DataTable(
          columns: const [
            DataColumn(label:Text("Name")),
            DataColumn(label:Text("Age")),
            DataColumn(label:Text("Designation")),
          ],
          rows: const [
            DataRow(cells: [
              DataCell(Text("Prinon")),
              DataCell(Text("29")),
              DataCell(Text("Android Developer")),
            ]),
            DataRow(cells: [
              DataCell(Text("Akter")),
              DataCell(Text("29")),
              DataCell(Text("Flutter Developer")),
            ]),
            DataRow(cells: [
              DataCell(Text("Rashed")),
              DataCell(Text("29")),
              DataCell(Text("React Native Developer")),
            ]),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
