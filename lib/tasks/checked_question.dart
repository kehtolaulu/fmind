import 'package:flutter/material.dart';
import 'package:fmind/tasks/task.dart';
import 'package:fmind/ui/tasks_views/checked_question_view.dart';

/// Question that has only one correct answer
class CheckedQuestion implements Task {
  String content;
  List<String> answers;
  String correctAnswer;

  CheckedQuestion(this.content, this.answers, this.correctAnswer);

  CheckedQuestion.yesNo(this.content, this.correctAnswer) : answers = ["Yes", "No"];

  @override
  Widget present() => CheckedQuestionView(this);
}
