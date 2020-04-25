import 'package:flutter/material.dart';

import 'ui/home_widget.dart';
import 'ui/article_view_widget.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter App',
      // home: Home(),
      routes: {
        '/': (context) => Home(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == ArticleView.routeName) {
          return new MaterialPageRoute(
            builder: (context) => ArticleView(settings.arguments),
            settings: settings,
          );
        }
        return new MaterialPageRoute(builder: (ctx) => Home());
      },
    );
  }
}
