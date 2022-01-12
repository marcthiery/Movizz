import 'package:flutter/material.dart';
import 'package:movizz/custom_icons/movizz_icons.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Texte Roboto",
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
      ),
    );
  }
}
