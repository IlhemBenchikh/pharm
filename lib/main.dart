import 'package:flutter/material.dart';
import 'package:ilhem/Pages/calcul.dart';
import 'package:ilhem/Pages/home.dart';
import 'package:ilhem/logs/login.dart';
import 'package:ilhem/logs/signup.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my app',
      home:Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}