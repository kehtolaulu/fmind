import 'package:flutter/material.dart';

import '../article.dart';
import '../part.dart';
import '../tasks/checked_question.dart';
import '../tasks/practice.dart';
import 'articles.dart';

class Home extends StatelessWidget {
  final List<Article> articles = [
    Article("How to meet ladies", [
      Part("Intro", "How to meet ladies, how to interest them...",)
    ]),
    Article("How to pump your body", [
      Part("Intro", "How to perform 5 minute training and to get...",),
      Part("Next level", "Blah bla bla",)
    ]),
    Article("How to get energy", [
      Part("Abstract", "How to gain energy from our natural stock...",)
    ])
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Articles(articles),
      );
}
