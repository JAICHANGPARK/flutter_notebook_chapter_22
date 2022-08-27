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
                            const SizedBox(
                              width: 100,
                              child: Text(
                                "Participant",
                                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                              ),
                            ),
                            Expanded(
                                child: SizedBox(
                              height: 24,
                              child: Stack(
                                children: const [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    bottom: 0,
                                    child: CircleAvatar(
                                      radius: 12,
                                    ),
                                  ),
                                  Positioned(
                                    left: 12,
                                    top: 0,
                                    bottom: 0,
                                    child: CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.orange,
                                    ),
                                  ),
                                  Positioned(
                                    left: 24,
                                    top: 0,
                                    bottom: 0,
                                    child: CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.red,
                                    ),
                                  ),
                                  Positioned(
                                    left: 36,
                                    top: 0,
                                    bottom: 0,
                                    child: CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.green,
                                    ),
                                  ),
                                  Positioned(
                                    left: 36,
                                    top: 0,
                                    bottom: 0,
                                    child: CircleAvatar(
                                      radius: 12,
                                      child: Icon(
                                        Icons.add,
                                        size: 14,
                                      ),
                                      foregroundColor: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ))
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: const [
                            SizedBox(
                                width: 100,
                                child: Text(
                                  "Date",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                )),
                            Text("19 Aug, 2022")
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                                width: 100,
                                child: Text(
                                  "Tags",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                )),
                            Row(
                              children: [
                                Container(
                                  decoration:
                                      BoxDecoration(color: Colors.blue[50], borderRadius: BorderRadius.circular(2)),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 4,
                                  ),
                                  child: const Text(
                                    "Website",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.red[50],
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 4,
                                  ),
                                  child: const Text(
                                    "High priority",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 18,
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Fer D Sambo"),
                                Text("Yesterday"),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text("Hi gonzales, don't forget our meeting tomorrow. "
                            "I think we'll gonna talk a lot about"
                            "some new page and others"),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          child: const Text("Content_and_modboards.fig"),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            border: Border.all(
                              color: Colors.grey[200]!,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Container(
                              child: const Text("3D and other assets"),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                border: Border.all(
                                  color: Colors.grey[200]!,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Container(
                              child: const Text("Our timeline progress"),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                border: Border.all(
                                  color: Colors.grey[200]!,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                border: Border.all(
                                  color: Colors.grey[200]!,
                                ),
                              ),
                              child: const Text("👍 2"),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                border: Border.all(
                                  color: Colors.grey[200]!,
                                ),
                              ),
                              child: const Text("💭 6"),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Text(
                              "Reply",
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 120,
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.blueGrey[50],
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.blueAccent,
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: const Center(
                            child: Text(
                              "Send",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 20,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Gonzales"),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text("3d ago")
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: Text(
                              "Hi sambo, i've donw the revision for the setting's page "
                              "and some icon changes. Give comments straight on figma",
                              style: TextStyle(
                                fontSize: 12
                              ),
                            ),
                          ),

                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 2,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  border: Border.all(
                                    color: Colors.grey[200]!,
                                  ),
                                ),
                                child: const Text("👍 2"),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 2,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  border: Border.all(
                                    color: Colors.grey[200]!,
                                  ),
                                ),
                                child: const Text("💭 1"),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                "Reply",
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
