import 'package:flutter/material.dart';

import '../part.dart';
import 'tasks_views/tasks_view.dart';

class PartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
        children: [title, Divider(), content, Divider(), TasksView(part.tasks)],
      );

  final Part part;
  PartView(this.part);

  Text get title => Text(part.title, style: titleStyle);

  TextStyle get titleStyle =>
      TextStyle(fontWeight: FontWeight.w600, fontSize: 36.0);

  Text get content => Text(part.content, style: contentStyle);

  TextStyle get contentStyle =>
      TextStyle(fontSize: 24.0, fontWeight: FontWeight.w300);
}
