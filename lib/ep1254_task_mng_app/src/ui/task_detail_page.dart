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
                  const Padding(
                    padding: EdgeInsets.fromLTRB(16, 16, 0, 16),
                    child: Text("Landing Page Project Meeting"),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 0, 24),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(width: 100, child: Text("Participant")),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            const SizedBox(width: 100, child: Text("Date")),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            const SizedBox(width: 100, child: Text("Tags")),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 28,
                   
                    child: Stack(
                      children: [
                        const Positioned(
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
                                IntrinsicWidth(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            "Comments",
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius: BorderRadius.circular(2),
                                            ),
                                            height: 16,
                                            width: 16,
                                            padding: const EdgeInsets.all(2),
                                            child: const Center(
                                              child: Text(
                                                "4",
                                                style: TextStyle(color: Colors.white, fontSize: 12),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      const Divider(
                                        color: Colors.black,
                                        height: 0,
                                        thickness: 1.5,
                                      ),
                                    ],
                                  ),
                                ),
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
