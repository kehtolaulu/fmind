import 'package:flutter/material.dart';
import 'package:fmind/tasks/multiple_choice_question.dart';

class MultipleChoiceQuestionView extends StatefulWidget {
  final MultipleChoiceQuestion question;

  MultipleChoiceQuestionView(this.question);

  @override
  _MultipleChoiceQuestionViewState createState() =>
      _MultipleChoiceQuestionViewState(question);
}

class _MultipleChoiceQuestionViewState
    extends State<MultipleChoiceQuestionView> {
  final MultipleChoiceQuestion question;

  List<String> selected;
  String state = "try";

  _MultipleChoiceQuestionViewState(this.question) {
    selected = [];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [text(question.content), ...options, actionButton],
      ),
    );
  }

  Widget get actionButton => state == "try"
      ? submitButton
      : (state == "failed" ? retryButton : text("ok"));

  void submit() => setState(() {
        if (selected.length == question.correctAnswers.length &&
            selected.every((a) => question.correctAnswers.contains((a)))) {
          state = "completed";
        } else {
          state = "failed";
        }
      });

  void retry() => setState(() {
        state = "try";
        selected = [];
      });

  Widget get submitButton => RaisedButton(
        onPressed: submit,
        child: text('Submit'),
        color: Colors.blue,
        textColor: Colors.white,
      );

  Widget get retryButton => RaisedButton(
        onPressed: retry,
        child: text('Retry'),
        color: Colors.blueGrey,
        textColor: Colors.white,
      );

  List<Widget> get options => question.answers
      .map((answer) => ListTile(
            title: option(answer),
            leading: Checkbox(
              value: selected.contains(answer),
              onChanged: (bool checked) {
                setState(() {
                  if (state != "try") return;
                  if (checked) {
                    selected.add(answer);
                  } else {
                    selected.remove(answer);
                  }
                });
              },
            ),
          ))
      .toList();

  Text option(String value) {
    Color color = Colors.black;
    if (state != "try") {
      color =
          question.correctAnswers.contains(value) == selected.contains(value)
              ? Colors.green
              : Colors.red;
    }
    return Text(value,
        style: TextStyle(
            fontSize: 20.0, fontWeight: FontWeight.w300, color: color));
  }

  static Widget text(String value) => Text(value,
      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300));
}
