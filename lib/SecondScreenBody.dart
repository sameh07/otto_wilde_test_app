import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:otto_wilde_test_app/ViewAllRow.dart';
import 'ScreenThree.dart';

class SecondScreenBody extends StatelessWidget {
  List<String> categories = ["Tutorials", "Products", "News"];
  List<String> images = [
    'assets/oven.png',
    'assets/rehburger.jpg',
    'assets/news.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SizedBox(
        height: 250,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
      buildGrillConnection(),
      SizedBox(
        height: 20,
      ),
      buildFavorites(context),
    ]);
  }

  Widget buildCategory(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 100),
      child: Column(children: <Widget>[
        Text(
          categories[index],
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(images[index]), fit: BoxFit.fill)),
        )
      ]),
    );
  }
}

Widget buildGrillConnection() {
  return Column(
    children: <Widget>[
      Text(
        "GRILL CONNECTION",
        style: TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        textAlign: TextAlign.left,
      ),
      Container(
          height: 350,
          width: 600,
          decoration: BoxDecoration(color: Colors.grey[850]),
          child: Column(children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text("NEW TO PLATFORM?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
              child: Text(
                "Connect your grill to unlock the power of your Otto grill",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      primary: Colors.red,
                      padding: const EdgeInsets.symmetric(horizontal: 150)),
                  child: Text(
                    "Start to grill smart",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                ))
          ]))
    ],
  );
}

Widget buildFavorites(BuildContext context) {
  return Container(
      height: 350,
      width: 600,
      child: Column(children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              "FAVORITES",
              style: TextStyle(color: Colors.white),
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.transparent),
              child: Text(
                "view all",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScreenThree()),
                );
              },
            )
          ],
        ),
        ViewAllRow()
      ]
      )
      );
}
