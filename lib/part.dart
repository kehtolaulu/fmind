import 'tasks/task.dart';

/// A part of an article
/// contains some text and task after
class Part {
  String title;
  String content;

  List<Task> tasks;

  Part(this.title, this.content, this.tasks);
}
