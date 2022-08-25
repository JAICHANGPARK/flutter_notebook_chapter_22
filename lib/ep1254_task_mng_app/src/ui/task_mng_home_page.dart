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
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
                    height: 42,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[50],
                    ),
                  ),
                  Expanded(child: Placeholder())
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Friday, 19 Aug",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Edit',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Expanded(child: Placeholder()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
