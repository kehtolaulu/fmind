import 'package:flutter/material.dart';
import 'package:fmind/tasks/task.dart';
import 'package:fmind/ui/tasks_views/multiple_choice_question_view.dart';

/// Question that has only one correct answer
class MultipleChoiceQuestion implements Task {
  String content;
  List<String> answers;
  List<String> correctAnswers;
  String id;

  MultipleChoiceQuestion._internal(this.content, this.answers, this.correctAnswers, this.id);

  @override
  Widget present() => MultipleChoiceQuestionView(this);

  static int nextId = 1;

  factory MultipleChoiceQuestion(String content, List<String> answers, List<String> correctAnswers) {
    String id = nextId.toString();
    nextId += 1;
    return MultipleChoiceQuestion._internal(content, answers, correctAnswers, id);
  }
}
