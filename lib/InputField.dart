import 'package:flutter/material.dart';
import 'package:otto_wilde_test_app/DataContainer.dart';

class InputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(color: Colors.grey),
          )),
          child: TextField(
            onChanged: (text) {
              DataContainer.data["email"] = text;
            },
            decoration: InputDecoration(
                hintText: "Enter your Email",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: TextField(
              onChanged: (text) {
              DataContainer.data["password"] = text;
            },
            decoration: InputDecoration(
                hintText: "Enter your password",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none),
          ),
        ),
      ],
    );
  }
}
