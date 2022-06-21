import 'package:flutter/material.dart';

class MenuItems extends StatelessWidget {

  final String title;
  final IconData icon;

  const MenuItems({Key? key, required this.title, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: GestureDetector(
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.lightBlueAccent,
              size: 30,
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: Text(
              title,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ))
          ],
        ),
      ),
    );
  }
}
