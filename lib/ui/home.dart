import 'package:flutter/material.dart';

import '../article.dart';
import '../part.dart';
import '../tasks/checked_question.dart';
import '../tasks/practice.dart';
import 'articles.dart';

class Home extends StatelessWidget {
  final List<Article> articles = [
    Article("How to meet ladies", [
      Part("Intro", "How to meet ladies, how to interest them...",
          [Practice.withContent("Talk to a woman.")])
    ]),
    Article("How to pump your body", [
      Part("Intro", "How to perform 5 minute training and to get...",
          [Practice.withContent("Do 20 push ups.")]
          ),
      Part("Next level", "Blah bla bla",
          [Practice.withContent("Do 20 pull ups.")])
    ]),
    Article("How to get energy", [
      Part("Abstract", "How to gain energy from our natural stock...",
          [CheckedQuestion.yesNo("Are you tired?", "Yes")])
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
