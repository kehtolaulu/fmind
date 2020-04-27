import 'package:flutter/material.dart';
import 'package:fmind/tasks/checked_question.dart';

class CheckedQuestionView extends StatefulWidget {
  final CheckedQuestion question;

  CheckedQuestionView(this.question);

  @override
  _CheckedQuestionViewState createState() =>
      _CheckedQuestionViewState(question);
}

class _CheckedQuestionViewState extends State<CheckedQuestionView> {
  final CheckedQuestion question;

  String selected;

  _CheckedQuestionViewState(this.question) {
    this.selected = question.answers.first;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(question.content, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20.0)),
          ...options
        ],
      ),
    );
  }

  List<Widget> get options => question.answers.map((answer) => ListTile(
        title: Text(answer),
        leading: Radio(
          value: answer,
          groupValue: this.selected,
          onChanged: (String value) {
            setState(() {
              this.selected = value;
            });
          },
        ),
      )).toList();
}
