import 'package:flutter/material.dart';

class TaskDetailPage extends StatefulWidget {
  const TaskDetailPage({Key? key}) : super(key: key);

  @override
  State<TaskDetailPage> createState() => _TaskDetailPageState();
}

class _TaskDetailPageState extends State<TaskDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
                    child: Text("Landing Page Project Meeting"),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 0, 24),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 100, child: Text("Participant")),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            SizedBox(width: 100, child: Text("Date")),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            SizedBox(width: 100, child: Text("Tags")),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 38,
                    color: Colors.red,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Divider(
                            height: 0,
                            color: Colors.grey,
                          ),
                        ),
                        Positioned(
                            left: 16,
                            right: 0,
                            top: 0,
                            bottom: 0,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text("Comments"),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.circular(2),
                                          ),
                                          padding: EdgeInsets.all(4),
                                          child: Center(
                                            child: Text("4"),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: Colors.black,
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
