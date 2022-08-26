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
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
                    child: Text("Landing Page Project Meeting"),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 100, child: Text("Participant")),
                          ],
                        ),
                        SizedBox(height: 12,),
                        Row(
                          children: [
                            SizedBox(width: 100, child: Text("Date")),
                          ],
                        ),
                        SizedBox(height: 12,),
                        Row(
                          children: [
                            SizedBox(width: 100, child: Text("Tags")),
                          ],
                        ),
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
