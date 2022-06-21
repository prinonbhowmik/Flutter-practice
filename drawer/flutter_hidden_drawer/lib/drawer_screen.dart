import 'package:flutter/material.dart';
import 'package:flutter_hidden_drawer/menu_items.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              CircleAvatar(),
              SizedBox(
                width: 16,
              ),
              Expanded(
                  child: Text(
                "Hidden Drawer Example",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ))
            ],
          ),
          SizedBox(height: 30,),
          MenuItems(title: "Home", icon: Icons.home),
          MenuItems(title: "My Account", icon: Icons.person),
          MenuItems(title: "My Orders", icon: Icons.history),
          MenuItems(title: "WishList", icon: Icons.list),
          MenuItems(title: "Settings", icon: Icons.settings),
          MenuItems(title: "Logout", icon: Icons.logout),
        ],
      ),
    );
  }
}
