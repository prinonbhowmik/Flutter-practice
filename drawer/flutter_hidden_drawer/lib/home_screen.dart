import 'package:flutter/material.dart';
import 'package:flutter_hidden_drawer/category_items.dart';

import 'data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool menuOpen = false;
  double tranx = 0, trany = 0, scale = 1.0;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        tranx = 0;
        trany = 0;
        scale = 1.0;

        setState(() {
          menuOpen = false;
        });
      },
      child: AnimatedContainer(
        color: Colors.white,
        duration: const Duration(microseconds: 1000),
        transform: Matrix4.translationValues(tranx, trany, 0)..scale(scale),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                !menuOpen
                    ? IconButton(
                        onPressed: () {
                          tranx = 300;
                          trany = 200;
                          scale = 0.6;

                          setState(() {
                            menuOpen = true;
                          });
                        },
                        icon: Icon(Icons.menu, color: Colors.blueAccent),
                      )
                    : IconButton(
                        onPressed: () {
                          tranx = 0;
                          trany = 0;
                          scale = 1.0;

                          setState(() {
                            menuOpen = false;
                          });
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.blueAccent,
                        )),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications, color: Colors.blueAccent),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: RaisedButton(
                onPressed: () {},
                elevation: 0,
                highlightElevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      "What do you want to buy?",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    )),
                    Icon(Icons.search, size: 16, color: Colors.grey),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(category.length, (index) {
                  var item = category[index];
                  return CategoryItem(
                      name: item["name"].toString(),
                      image: item["image"].toString());
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
