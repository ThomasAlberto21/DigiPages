import 'package:flutter/material.dart';
import 'package:digipages/GetStarted.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DigiPages",
      theme: ThemeData(),
      home: const GetStarted(),
    );
  }
}
