import 'package:flutter/material.dart';
import 'package:fmind/tasks/checked_question.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CheckedQuestionView extends StatefulWidget {
  final CheckedQuestion question;

  CheckedQuestionView(this.question);

  @override
  _CheckedQuestionViewState createState() =>
      _CheckedQuestionViewState(question);
}

class _CheckedQuestionViewState extends State<CheckedQuestionView> {
  final CheckedQuestion question;

  String _selected;

  String get selected => _selected;

  set selected(String selected) {
    this._selected = selected;
    if (this.selected != null) {
      this.message =
          this.selected == this.question.correctAnswer ? success : failure;
    }
  }

  Widget message;
  static Widget success =
      Text("Correct answer!", style: TextStyle(color: Colors.green));
  static Widget failure =
      Text("Try again!", style: TextStyle(color: Colors.red));

  _CheckedQuestionViewState(this.question) {
    SharedPreferences.getInstance().then((prefs) {
      setState(() {
        this.selected = prefs.getString(this.question.id) ?? null;
      });
    });

    this.selected = null;
    this.message = Text("");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(question.content,
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20.0)),
          ...options,
          message
        ],
      ),
    );
  }

  List<Widget> get options => question.answers
      .map((answer) => ListTile(
            title: Text(answer),
            leading: Radio(
              value: answer,
              groupValue: this.selected,
              onChanged: (String value) {
                setState(() {
                  this.selected = value;
                });
                SharedPreferences.getInstance().then(
                    (prefs) => {prefs.setString(this.question.id, value)});
              },
            ),
          ))
      .toList();
}
