import 'package:flutter/material.dart';
import 'package:fmind/article.dart';

class ArticlePreview extends StatelessWidget {
  Article article;

  ArticlePreview(this.article);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                title,
                preview,
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  readTime,
                  star,
                ],
              ),
            ),
          ],
        ),
        Divider(
          height: 2.0,
          color: Colors.grey,
        )
      ],
    );
  }

  Widget get title => Padding(
        padding: const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 6.0),
        child: Text(
          article.title,
          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
        ),
      );

  Widget get preview => Padding(
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
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.star_border,
          size: 35.0,
          color: Colors.grey,
        ),
      );
}
