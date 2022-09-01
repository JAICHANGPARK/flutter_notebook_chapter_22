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
                    children: [
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
                  Spacer(),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[400]!),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.calendar_today,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[400]!),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.person_add_alt_1_outlined,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
