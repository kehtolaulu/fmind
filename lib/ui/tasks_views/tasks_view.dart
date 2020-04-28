import 'package:flutter/material.dart';

import '../../tasks/task.dart';

class TasksView extends StatelessWidget {
  final List<Task> tasks;

  TasksView(this.tasks);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text(
          "Tasks for this step",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24.0),
        ),
        Divider(),
        ...tasksViews
      ]),
    );
  }

  List<Widget> get tasksViews =>
      tasks.expand((task) => [task.present(), Divider()]).toList();
}
