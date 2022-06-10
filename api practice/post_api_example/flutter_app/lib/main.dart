import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/SecondPage.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPass = TextEditingController();
  late var visibility;

  @override
  void initState() {
    super.initState();
    visibility = false;
  }

  @override
  void dispose() {
    _controllerEmail.dispose();
    _controllerPass.dispose();
    super.dispose();
  }


  Future getLogin() async{
    var url = Uri.https("https://restorapos.com/newrpos/appv1/","sign_in");

    var response = await http.post(Uri.parse("https://restorapos.com/newrpos/appv1/sign_in"),body:
    {_controllerEmail.text.toString(),
      _controllerPass.text.toString()
    });

    if(response.statusCode == 200){
      setState(() {
        visibility = true;
        print(response.body);
      });

      Map<String, dynamic> loginInfo = jsonDecode(response.body);
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => const SecondPage()));
    }


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _controllerEmail,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Enter Email"),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: _controllerPass,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 30,
                height: (MediaQuery.of(context).size.width) * 0.10,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      visibility = true;
                    });
                    getLogin();
                  },
                  child: const Text("Login"),
                ),
              ),
              const SizedBox(height: 45,),
              Center(
                child: visibility ? const CircularProgressIndicator() : const Text("") ,
              )
            ],

          ),
        ),
      ),
    );
  }
}
