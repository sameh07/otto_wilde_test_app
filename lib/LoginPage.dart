import 'dart:html';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
        Colors.black,
        Colors.black,
        Colors.black,
      ]),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 80,)
          Header(),
          Expanded(child: Container(
            
          ))
        ],),
    ));
  }
}
