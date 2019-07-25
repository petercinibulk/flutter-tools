import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// [Widget] that determines if an app has been opened and if not, displays an intro screen
class FirstTimeScreen extends StatefulWidget {
  /// [Widget] that is displayed as a placeholder until it determines which route to show
  final Widget loadingScreen;

  /// [PageRoute] that goes to the intro screen, if the app is opened for the first time
  final PageRoute introScreen;

  /// [PageRoute] that goes to the landing screen, if the app has already been opened
  final PageRoute landingScreen;

  FirstTimeScreen(
      {Key key,
      this.loadingScreen = const Center(child: CircularProgressIndicator()),
      @required this.introScreen,
      @required this.landingScreen})
      : super(key: key);

  _FirstTimeScreenState createState() => _FirstTimeScreenState();
}

class _FirstTimeScreenState extends State<FirstTimeScreen> {
  Future _checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('intro_screen_seen') ?? false);

    if (_seen) {
      Navigator.of(context).pushReplacement(widget.landingScreen);
    } else {
      prefs.setBool('seen', true);
      Navigator.of(context).pushReplacement(widget.introScreen);
    }
  }

  @override
  void initState() {
    super.initState();

    new Timer(new Duration(milliseconds: 200), () {
      _checkFirstSeen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.loadingScreen;
  }
}
