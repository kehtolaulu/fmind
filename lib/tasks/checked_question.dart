import 'package:flutter/material.dart';
import 'package:fmind/tasks/task.dart';
import 'package:fmind/ui/tasks_views/checked_question_view.dart';

/// Question that has only one correct answer
class CheckedQuestion implements Task {
  String content;
  List<String> answers;
  String correctAnswer;
  String id;

  CheckedQuestion(this.content, this.answers, this.correctAnswer, this.id);

  CheckedQuestion.yesNo(this.content, this.correctAnswer, this.id) : answers = ["Yes", "No"];

  @override
  Widget present() => CheckedQuestionView(this);
}
