import 'package:flutter/material.dart';

import '../article.dart';
import 'simple_wrapper_widget.dart';

class ArticleView extends StatelessWidget {
  static const routeName = '/article';

  static void navigate(BuildContext context, Article article) {
    Navigator.pushNamed(context, '/article', arguments: article);
  }

  final Article article;

  const ArticleView(this.article);

  @override
  Widget build(BuildContext context) => SimpleWrapper(
      article.title,
      Column(
        children: alignLeft([title, Divider(), content]),
      ));

  List<Widget> alignLeft(List<Widget> widgets) => widgets
      .map((w) => Align(alignment: Alignment.centerLeft, child: w))
      .toList();

  Text get title => Text(article.title, style: titleStyle);

  TextStyle get titleStyle =>
      TextStyle(fontWeight: FontWeight.w600, fontSize: 36.0);

  Text get content => Text(article.content, style: contentStyle);

  TextStyle get contentStyle =>
      TextStyle(fontSize: 24.0, fontWeight: FontWeight.w300);
}
