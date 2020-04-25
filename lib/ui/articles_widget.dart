import 'package:flutter/material.dart';

import '../article.dart';
import 'article_preview_widget.dart';

class Articles extends StatelessWidget {
  final List<Article> articles;

  Articles(this.articles);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, position) => ArticlePreview(articles[position]),
        itemCount: articles.length);
  }
}
