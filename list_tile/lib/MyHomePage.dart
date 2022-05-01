import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("List tile",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
          body: ListView(
            children: [
              ListTile(
                title: Text("This is basic listtile"),
              ),
              Divider(),
              ListTile(
                title: Text("ListTile with icon"),
                leading: CircleAvatar(child: Icon(Icons.call)),
                trailing: Icon(Icons.message),
              ),
              Divider(),
              ListTile(
                title: Text("ListTile with subtile"),
                subtitle: Text("This is sub tile text"),
                leading: CircleAvatar(child: Icon(Icons.call)),
                trailing: Icon(Icons.message),
              ),
              Divider(),
              ListTile(
                title: Text("ListTile with subtile & threeline"),
                isThreeLine: true,
                subtitle: Text("This is sub tile text"),
                leading: CircleAvatar(child: Icon(Icons.call)),
                trailing: Icon(Icons.message),
              ),
              Divider(),
              ListTile(
                title: Text("ListTile with subtile & threeline"),
                isThreeLine: true,
                dense: true,
                subtitle: Text("This is sub tile text"),
                leading: CircleAvatar(child: Icon(Icons.call)),
                trailing: Icon(Icons.message),
              ),
              Divider(),
              ListTile(
                title: Text("ListTile with subtile & threeline"),
                isThreeLine: true,
                dense: true,
                subtitle: Text("This is sub tile text"),
                leading: CircleAvatar(child: Icon(Icons.call)),
                  trailing: Badge(
                    badgeContent: Text("1",style: TextStyle(color: Colors.white),),
                    badgeColor: Colors.blueAccent,
                    child: Icon(Icons.message),
                  ),
              ),
            ],
          ),
    )
    );
  }
}
