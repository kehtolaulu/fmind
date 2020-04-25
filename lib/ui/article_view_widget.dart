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
  Widget build(BuildContext context) {
    return SimpleWrapper(article.title, Text(article.content));
  }
}
