import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

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
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 440,
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
                        Text(
                          "Aug",
                          style: TextStyle(fontSize: 16),
                        ),
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
                    margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                    height: 42,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[50],
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.search,
                        ),
                        hintText: "Search",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Expanded(
                    child: TableCalendar(
                      headerVisible: false,
                      focusedDay: DateTime.now(),
                      firstDay: DateTime(2021, 1, 1),
                      lastDay: DateTime(2022, 12, 31),
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
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
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
                    const SizedBox(
                      height: 12,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 68,
                            margin: const EdgeInsets.only(bottom: 12),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[200]!),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              children: [
                                Container(
                                  width: 3,
                                  color: Colors.cyan,
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text(
                                      "Meeting with Gonzales",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.access_time_outlined,
                                          size: 16,
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        const Text(
                                          "16:00 - 17:30PM 1hr30m",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
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
