import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1277_article_app/article_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  runApp(
    const ProviderScope(
      child: ArticleApp(),
    ),
  );
}
