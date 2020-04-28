import 'package:flutter/material.dart';

import '../article.dart';
import 'article_view.dart';

class ArticlePreview extends StatelessWidget {
  final Article article;

  ArticlePreview(this.article);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          articleRow(context),
          Divider(height: 2.0, color: Colors.grey)
        ],
      );

  Widget articleRow(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: () => ArticleView.navigate(context, article),
              behavior: HitTestBehavior.translucent,
              child: preview),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [readTime, star],
            ),
          ),
        ],
      );

  Widget get preview => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [title, contentPreview],
      );

  Widget get title => Padding(
      padding: const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 6.0),
      child: Text(article.title,
          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)));

  Widget get contentPreview => Padding(
        padding: const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 12.0),
        child: Text(
          article.preview,
          style: TextStyle(fontSize: 18.0),
        ),
      );

  Widget get readTime => Text(
        article.readingTimeInMinutes,
        style: TextStyle(color: Colors.grey),
      );

  Widget get star => Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(
          Icons.star_border,
          size: 35.0,
          color: Colors.grey,
        ),
      );
}
