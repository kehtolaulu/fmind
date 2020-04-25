import 'package:flutter/material.dart';
import 'package:fmind/other_widget.dart';

import 'home_widget.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter App',
      // home: Home(),
      routes: {
        '/': (context) => Home(),
        '/second': (context) => OtherRoute(),
      },
    );
  }
}
