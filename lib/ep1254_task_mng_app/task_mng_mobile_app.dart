import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1254_task_mng_app/src/ui/task_mng_home_page.dart';


class TaskMngMobileApp extends StatelessWidget {
  const TaskMngMobileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: TaskMngHomePage(),
    );
  }
}
