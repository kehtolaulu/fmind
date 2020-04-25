import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SimpleWrapper extends StatelessWidget {
  final String title;
  final Widget content;

  SimpleWrapper(this.title, this.content);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: content
      ),
    );
  }
}
