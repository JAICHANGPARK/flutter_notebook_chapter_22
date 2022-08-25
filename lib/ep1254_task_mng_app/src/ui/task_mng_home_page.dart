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
      backgroundColor: Colors.blueGrey[50],
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 400,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 16,
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.menu),
                        SizedBox(
                          width: 12,
                        ),
                        Text("Aug"),
                        Icon(Icons.keyboard_arrow_up),
                        Spacer(),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          child: Icon(
                            Icons.add,
                            size: 14,
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Icon(Icons.calendar_month_outlined),
                        SizedBox(
                          width: 12,
                        ),
                        Icon(Icons.more_vert_outlined)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Expanded(
              child: Container(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
