import 'package:flutter/material.dart';

import 'src/ui/doit_todo_home_page.dart';

class DoitTodoApp extends StatelessWidget {
  const DoitTodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DoitTodoHomePage(),
    );
  }
}
