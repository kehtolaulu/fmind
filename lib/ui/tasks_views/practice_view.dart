import 'package:flutter/material.dart';
import 'package:fmind/tasks/practice.dart';

class PracticeView extends StatelessWidget {
  final Practice practice;

  PracticeView(this.practice);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(practice.content,
          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18.0)),
    );
  }
}
