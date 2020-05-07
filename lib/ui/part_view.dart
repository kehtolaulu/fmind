import 'package:flutter/material.dart';

import '../part.dart';
import 'tasks_views/tasks_view.dart';

class PartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Stack(children: [
        ListView(
          children: [
            title,
            Divider(),
            content,
            Divider(),
            TasksView(part.tasks)
          ],
        ),
        new Positioned(child: pageIndicator, bottom: 10.0, right: 10.0)
      ]);

  final Part part;
  final Widget pageIndicator;

  PartView(this.part, {this.pageIndicator = const Text("")});

  Text get title => Text(part.title, style: titleStyle);

  TextStyle get titleStyle =>
      TextStyle(fontWeight: FontWeight.w600, fontSize: 36.0);

  Text get content => Text(part.content, style: contentStyle);

  TextStyle get contentStyle =>
      TextStyle(fontSize: 24.0, fontWeight: FontWeight.w300);
}
