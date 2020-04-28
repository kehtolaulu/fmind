import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SimpleWrapper extends StatelessWidget {
  final String title;
  final Widget content;
  final List<Widget> actions;

  SimpleWrapper(this.title, this.content, {this.actions = const []});

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: Text(title), actions: []),
      body: Container(padding: EdgeInsets.all(16.0), child: content));
}
