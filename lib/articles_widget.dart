import 'package:flutter/material.dart';
import 'package:fmind/article.dart';
import 'package:fmind/article_preview_widget.dart';

class Articles extends StatelessWidget {
  List<Article> articles = [
    Article("How to meet ladies", "How to meet ladies, how to interest them..."),
    Article("How to pump your body", "How to perform 5 minute training and to get..."),
    Article("How to get energy", "How to gain energy from our natural stock...")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, idx) => ArticlePreview(articles[idx]),
        itemCount: articles.length);
  }
}
