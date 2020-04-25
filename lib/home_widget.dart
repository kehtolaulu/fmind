import 'package:flutter/material.dart';
import 'package:fmind/articles_widget.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Articles(),
    );
  }
}
