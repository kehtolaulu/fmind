import 'package:fmind/tasks/task.dart';

class CheckedQuestion implements Task {
  String content;
  List<String> answers;
  String correctAnswer;

  CheckedQuestion(this.content, this.answers, this.correctAnswer);

  CheckedQuestion.yesNo(this.content, this.correctAnswer) : answers = ["Yes", "No"];

}
