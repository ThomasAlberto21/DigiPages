import 'dart:async';
import 'package:flutter/material.dart';
import 'package:digipages/onboarding/start.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  bool status = true; // Menentukan status

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      if (status) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Start()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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

  @override
  void dispose() {
    status = false;
    super.dispose();
  }
}
