import 'package:flutter/material.dart';

class TaskMngHomePage extends StatefulWidget {
  const TaskMngHomePage({Key? key}) : super(key: key);

  @override
  State<TaskMngHomePage> createState() => _TaskMngHomePageState();
}

class _TaskMngHomePageState extends State<TaskMngHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 500,
              color: Colors.white,
            ),
            SizedBox(height: 12,),
            Expanded(child: Placeholder()),
          ],
        ),
      ),
    );
  }
}
