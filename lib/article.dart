import 'dart:math';

class Article {
  String title;
  String content;

  String get preview => content.substring(0, previewLength) + "...";

  int get previewLength => min(firstLineLength, 30);

  String get readingTimeInMinutes => (content.length / 1024).toStringAsFixed(1) + "m";

  int get firstLineLength {
    int newLine = content.indexOf("\n") ;
    if (newLine <= 0) {
      return content.length;
    }
    return newLine;
  }

  Article(this.title, this.content);
}
