import 'package:flutter/material.dart';

import 'ui/home.dart';
import 'ui/article_view.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fmind',
      // home: Home(),
      routes: {
        '/': (context) => Home(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == ArticleView.routeName) {
          return new MaterialPageRoute(
            builder: (context) => ArticleView.forArticle(settings.arguments),
            settings: settings,
          );
        }
        return new MaterialPageRoute(builder: (ctx) => Home());
      },
    );
  }
}
