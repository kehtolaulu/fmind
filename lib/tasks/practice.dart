import 'package:flutter/material.dart';
import 'package:fmind/tasks/task.dart';
import 'package:fmind/ui/tasks_views/practice_view.dart';

/// Task that requires user to do something
class Practice implements Task {
  String content;
  bool done = false;
  String id;

  Practice(this.content, this.done);

  Practice.withContent(this.content);

  @override
  Widget present() => PracticeView(this);
}
