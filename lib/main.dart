import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1274_do_it_todo_app/doit_todo_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  runApp(
    const ProviderScope(
      child: DoitTodoApp(),
    ),
  );
}
