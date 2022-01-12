import 'package:flutter/material.dart';

class IntroductionPage extends StatefulWidget {
  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/logo_short.png",
          width: 200,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: Center(
          child: Icon(
            Icons.home,
          ),
        ),
        onPressed: () {
          Navigator.popAndPushNamed(context, '/home');
        },
      ),
    );
  }
}
