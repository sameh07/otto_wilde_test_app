import 'package:flutter/material.dart';

import 'Header.dart';
import 'InputWrapper.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.black),
      child: Center(
      child: Column(
        children: <Widget>[
          const SizedBox(height: 20),
          Center(
          child: Header()
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
            child: InputWrapper(),
          ))
        ],
      ),
      )
    ));
  }
}
