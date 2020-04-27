import 'dart:math';

import 'part.dart';

class Article {
  String title;
  List<Part> parts;

  Article(this.title, this.parts);

  String get preview => content.substring(0, previewLength) + "...";

  int get previewLength => min(firstLineLength, 30);

  String get content => parts.map((p) => p.content).join("\n\n");

  String get readingTimeInMinutes => (content.length / 1024).toStringAsFixed(1) + "m";

  int get firstLineLength {
    int newLine = content.indexOf("\n") ;
    if (newLine <= 0) {
      return content.length;
    }
    return newLine;
  }
}
