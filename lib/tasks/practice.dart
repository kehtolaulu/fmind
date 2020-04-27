import 'package:fmind/tasks/task.dart';

/// Task that requires user to do something
class Practice implements Task {
  String content;
  bool done = false;

  Practice(this.content, this.done);

  Practice.withContent(this.content);
}
