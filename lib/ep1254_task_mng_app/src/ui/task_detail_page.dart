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
                    padding: EdgeInsets.fromLTRB(16, 16, 0, 24),
                    child: Text(
                      "Landing Page Project Meeting",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
                              Padding(
                                padding: const EdgeInsets.only(right: 32),
                                child: IntrinsicWidth(
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
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 32),
                                child: IntrinsicWidth(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            "Files",
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                              borderRadius: BorderRadius.circular(2),
                                            ),
                                            height: 16,
                                            width: 16,
                                            padding: const EdgeInsets.all(2),
                                            child: const Center(
                                              child: Text(
                                                "2",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      const Divider(
                                        color: Colors.transparent,
                                        height: 0,
                                        thickness: 1.5,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 32),
                                child: IntrinsicWidth(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            "Media",
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                              borderRadius: BorderRadius.circular(2),
                                            ),
                                            height: 16,
                                            width: 16,
                                            padding: const EdgeInsets.all(2),
                                            child: const Center(
                                              child: Text(
                                                "2",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      const Divider(
                                        color: Colors.transparent,
                                        height: 0,
                                        thickness: 1.5,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 32),
                                child: IntrinsicWidth(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            "Links",
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                              borderRadius: BorderRadius.circular(2),
                                            ),
                                            height: 16,
                                            width: 16,
                                            padding: const EdgeInsets.all(2),
                                            child: const Center(
                                              child: Text(
                                                "2",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      const Divider(
                                        color: Colors.transparent,
                                        height: 0,
                                        thickness: 1.5,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 18,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Fer D Sambo"),
                                Text("Yesterday"),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text("Hi gonzales, don't forget our meeting tomorrow. "
                            "I think we'll gonna talk a lot about"
                            "some new page and others"),
                        SizedBox(
                          height: 16,
                        ),
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
            )
          ],
        ),
      ),
    );
  }
}
