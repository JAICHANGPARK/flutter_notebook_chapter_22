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
            Expanded(
                child: Column(
              children: [
                Container(
                  height: 220,
                  color: Colors.grey,
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
                  padding: EdgeInsets.only(left: 16),
                  color: Colors.purple,
                  child: ListView.builder(
                    itemCount: 9,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 28,
                            ),
                            SizedBox(height: 4,),
                            Text("Dream"),
                          ],
                        ),
                      );
                    },
                  ),
                )
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
