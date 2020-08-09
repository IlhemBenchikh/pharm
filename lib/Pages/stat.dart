import 'package:flutter/material.dart';

class Statistique extends StatefulWidget {
  @override
  _StatistiqueState createState() => _StatistiqueState();
}

class _StatistiqueState extends State<Statistique> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'statistique'
        ),
      ),
    );
  }
}