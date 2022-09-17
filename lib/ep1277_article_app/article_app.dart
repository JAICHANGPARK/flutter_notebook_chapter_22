import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1277_article_app/src/ui/article_home_page.dart';

class ArticleApp extends StatelessWidget {
  const ArticleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Article App",
      home: ArticleHomePage(),
    );
  }
}
