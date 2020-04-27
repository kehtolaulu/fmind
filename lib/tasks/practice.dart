import 'package:fmind/tasks/task.dart';

class Practice implements Task {
  String content;
  bool done = false;

  Practice(this.content, this.done);

  Practice.withContent(this.content);
}
