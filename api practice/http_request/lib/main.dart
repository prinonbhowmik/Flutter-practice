import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart '  as http;
import 'dart:convert' as convert;
import 'Model/User.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var data;
  Future getData() async{
    var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    print(response.body);

    var jsonResponse = convert.jsonDecode(response.body);
    List<User> users = [];

    for (var i in jsonResponse) {
      User user = User(i["title"], i["body"]);
      users.add(user);
    }

    setState(() {

      data = jsonResponse;
    });
  }

  @override
  void initState() {
   getData();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Http Request"),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot snapshot){
          if(snapshot == null){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }else{
            return ListView.builder(
              itemCount: data==null?0:data.length,
              itemBuilder: ( context,  index) {
                return ListTile(
                  title: Text(data[index]["title"]),
                  subtitle: Text(data[index]["body"]),
                  dense: true,
                );
              });
          }
        }

      ),
      );

  }
}
