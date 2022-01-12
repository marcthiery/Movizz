import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movizz/HomePage.dart';
import 'package:movizz/IntroductionPage.dart';
import 'package:page_transition/page_transition.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Roboto',
        primaryColor: Color(0xFFFF1493),
      ),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case "/":
            return PageTransition(
                child: IntroductionPage(), type: PageTransitionType.fade);
          case "/home":
            return PageTransition(
                child: HomePage(), type: PageTransitionType.fade);
          default:
            return null;
        }
      },
    );
  }
}
