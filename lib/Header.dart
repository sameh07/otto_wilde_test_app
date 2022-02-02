import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
        child: Row(children: [
          Image.asset(
            'assets/icon.png',
            width: 100.0,
            height: 100.0,
          ),
          headerText(),
        ]));
  }

  Widget headerText() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 125),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                "Otto Wilde grillers Gmbh",
                style: TextStyle(color: Colors.red, fontSize: 40),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Welcome",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            )
          ],
        ));
  }
}
