import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SimpleWrapper extends StatelessWidget {
  final String title;
  final Widget content;

  SimpleWrapper(this.title, this.content);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Container(padding: EdgeInsets.all(16.0), child: content));
}
