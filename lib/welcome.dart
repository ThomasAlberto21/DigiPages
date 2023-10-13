import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Center(
              child: Image.asset(
                "images/logo2.png",
                height: 300,
                width: 300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
