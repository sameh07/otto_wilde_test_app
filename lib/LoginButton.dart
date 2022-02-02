// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:otto_wilde_test_app/DataContainer.dart';
import 'package:otto_wilde_test_app/SecondScreen.dart';

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        //height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                primary: Colors.red,
                padding: const EdgeInsets.symmetric(horizontal: 150)
              ),
              child: Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                if (DataContainer.data["email"] == "test@example.com") {
                  Navigator.push(
                    context,
                     MaterialPageRoute(builder: (context) =>  SecondScreen()),
                  );
                }
              }),
        ));
  }
}
