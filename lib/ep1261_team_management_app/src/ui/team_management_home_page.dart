import 'package:flutter/material.dart';

class TeamManagementHomePage extends StatefulWidget {
  const TeamManagementHomePage({Key? key}) : super(key: key);

  @override
  State<TeamManagementHomePage> createState() => _TeamManagementHomePageState();
}

class _TeamManagementHomePageState extends State<TeamManagementHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Good morning"),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Dream Lab",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[400]!),
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.calendar_today,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[400]!),
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.person_add_alt_1_outlined,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
                child: Column(
              children: [
                Container(
                  height: 200,
                  padding: EdgeInsets.only(left: 16, right: 16, top: 0),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 24,
                        right: 24,
                        top: 0,
                        bottom: 44,
                        child: Container(
                          decoration: BoxDecoration(color: Colors.purple[50], borderRadius: BorderRadius.circular(16),),
                        ),
                      ),
                      Positioned(
                        left: 12,
                        right: 12,
                        top: 0,
                        bottom: 54,
                        child: Container(
                          decoration: BoxDecoration(color: Colors.purple[200], borderRadius: BorderRadius.circular(16),),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 0,
                        bottom: 64,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 6,
                    horizontal: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Team Members",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text("See All"),
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 84,
                  padding: const EdgeInsets.only(left: 16),
                  child: ListView.builder(
                    itemCount: 9,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            CircleAvatar(
                              radius: 28,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Dream",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 6,
                    horizontal: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Team Tasks",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text("See All"),
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: ListView.builder(
                      itemCount: 8,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 320,
                          margin: EdgeInsets.only(right: 16),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey[400]!,
                              ),
                              borderRadius: BorderRadius.circular(8)),
                        );
                      },
                    ),
                  ),
                ),
              ],
            )),
            Container(
              height: 84,
              margin: const EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 54,
                    width: 54,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      shape: BoxShape.circle,
                      color: Colors.blue[100],
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.apps_outlined,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Container(
                    height: 54,
                    width: 54,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[200]!),
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.list_alt_outlined,
                      ),
                    ),
                  ),
                  Container(
                    height: 54,
                    width: 54,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[200]!),
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.supervisor_account_outlined,
                      ),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.add,
                      size: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
