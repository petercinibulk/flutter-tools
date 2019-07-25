import 'package:first_time_screen/first_time_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FirstTimeScreen Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstTimeScreen(
        loadingScreen: Center(
          child: Text("Loading Screen"),
        ),
        introScreen: MaterialPageRoute(builder: (context) => Intro()),
        landingScreen: MaterialPageRoute(builder: (context) => Landing()),
      ),
    );
  }
}

class Landing extends StatelessWidget {
  const Landing({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Landing"),
      ),
    );
  }
}

class Intro extends StatelessWidget {
  const Intro({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Intro"),
      ),
    );
  }
}
