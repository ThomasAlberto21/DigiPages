import 'dart:async';
import 'package:flutter/material.dart';
import 'package:digipages/onboarding/start.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Start()));
    });
    Color blue = const Color(0xff2563eb);
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: blue,
        child: Stack(
          children: <Widget>[
            Center(
              child: Image.asset(
                "images/logo.png",
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
