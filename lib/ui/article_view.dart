import 'package:flutter/material.dart';
import 'package:fmind/ui/part_view.dart';

import '../article.dart';
import 'simple_wrapper.dart';

class ArticleView extends StatelessWidget {
  static const routeName = '/article';

  ArticleView.forArticle(this.article)
      : this.parts = article.parts.map((part) => PartView(part)).toList();

  static void navigate(BuildContext context, Article article) =>
      Navigator.pushNamed(context, '/article', arguments: article);

  ArticleView(this.article, this.parts);

  final Article article;
  final List<PartView> parts;

  PageController get controller => PageController();

  @override
  Widget build(BuildContext context) => SimpleWrapper(
      article.title, PageView(controller: controller, children: parts));
}
