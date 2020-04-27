import 'package:flutter/material.dart';
import 'package:fmind/ui/part_view.dart';

import '../article.dart';
import '../part.dart';
import 'simple_wrapper.dart';

class ArticleView extends StatelessWidget {
  static const routeName = '/article';

  ArticleView.forArticle(this.article)
      : this.parts = article.parts
            .asMap()
            .entries
            .map((entry) => partView(entry, article.parts.length))
            .toList();

  static Widget pageIndicator(int page, int pages) =>
      Text("Page $page / $pages");

  static PartView partView(MapEntry<int, Part> entry, int pages) =>
      PartView(entry.value, pageIndicator: pageIndicator(entry.key + 1, pages));

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
