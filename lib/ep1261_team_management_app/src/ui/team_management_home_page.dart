import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1261_team_management_app/src/model/team_member.dart';
import 'package:flutter_notebook_chapter_22/ep1261_team_management_app/src/repository/team_manage_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
            const SizedBox(
              height: 24,
            ),
            Expanded(
                child: Column(
              children: [
                Container(
                  height: 200,
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 24,
                        right: 24,
                        top: 0,
                        bottom: 28,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(125, 135, 245, 0.2),
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 12,
                        right: 12,
                        top: 0,
                        bottom: 38,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(125, 135, 245, 0.5),
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 0,
                        bottom: 48,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(125, 135, 245, 1),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.white.withOpacity(0.4),
                                      radius: 24,
                                    ),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Meeting with Dribble",
                                          style: TextStyle(color: Colors.white, fontSize: 16),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.calendar_today,
                                              size: 12,
                                              color: Colors.white.withOpacity(0.6),
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              "12/06/2022",
                                              style: TextStyle(
                                                color: Colors.white.withOpacity(0.6),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Participants",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Expanded(
                                          child: Stack(
                                            children: const [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                bottom: 0,
                                                child: CircleAvatar(
                                                  radius: 14,
                                                ),
                                              ),
                                              Positioned(
                                                left: 16,
                                                top: 0,
                                                bottom: 0,
                                                child: CircleAvatar(
                                                  radius: 14,
                                                  backgroundColor: Colors.red,
                                                ),
                                              ),
                                              Positioned(
                                                left: 32,
                                                top: 0,
                                                bottom: 0,
                                                child: CircleAvatar(
                                                  radius: 14,
                                                  backgroundColor: Colors.grey,
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                                    Expanded(
                                        child: Column(
                                      children: [
                                        const Text(
                                          "Event Objective",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white.withOpacity(0.2),
                                                borderRadius: BorderRadius.circular(16),
                                              ),
                                              padding: const EdgeInsets.symmetric(
                                                horizontal: 8,
                                                vertical: 4,
                                              ),
                                              child: Row(
                                                children: const [
                                                  Icon(
                                                    Icons.videocam,
                                                    color: Colors.white,
                                                    size: 14,
                                                  ),
                                                  SizedBox(
                                                    width: 4,
                                                  ),
                                                  Text(
                                                    "Zoom",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    )),
                                    Expanded(
                                        child: Row(
                                      children: [
                                        const Spacer(),
                                        Container(
                                          width: 64,
                                          height: 32,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.white.withOpacity(0.4),
                                            ),
                                            borderRadius: BorderRadius.circular(24),
                                          ),
                                          child: const Center(
                                              child: Text(
                                            "Join",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          )),
                                        ),
                                      ],
                                    )),
                                  ],
                                ),
                              ),
                            ],
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
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.grey,
                        ),
                        child: const Text("See All"),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 84,
                  padding: const EdgeInsets.only(left: 16),
                  child: Consumer(
                    builder: (context, ref, _) {
                      AsyncValue<Team?> items = ref.watch(getTeamMembers);
                      return items.when(
                        data: (data) {
                          return ListView.builder(
                            itemCount: 9,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              TeamMember item = data?.results?[index] ?? TeamMember();
                              return Padding(
                                padding: const EdgeInsets.only(right: 16),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 28,
                                      backgroundImage: NetworkImage(item.picture?.medium ?? ""),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      item.name?.first ?? "",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        error: (e, s) {
                          return Text("$e");
                        },
                        loading: () => const Center(
                          child: CircularProgressIndicator(),
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
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.grey,
                        ),
                        child: const Text("See All"),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, bottom: 8),
                    child: ListView.builder(
                      itemCount: 8,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 320,
                          margin: const EdgeInsets.only(right: 16),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[400]!,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.red[400],
                                      radius: 24,
                                    ),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Airbnb Branding Design",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        const Text(
                                          "Graphics Design",
                                          style: TextStyle(color: Colors.teal, fontSize: 12),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.file_copy_outlined,
                                      size: 16,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "3 file",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Icon(
                                      Icons.chat_bubble_outline_outlined,
                                      size: 16,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "15 comments",
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        const Text("Status"),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 6,
                                            vertical: 3,
                                          ),
                                          child: const Text(
                                            "In Progress",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                        )
                                      ],
                                    )),
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        const Text("Deadline"),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.grey[200],
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 6,
                                            vertical: 3,
                                          ),
                                          child: const Text(
                                            "12 Aug",
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        )
                                      ],
                                    )),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const Text("Members"),
                                          SizedBox(
                                            height: 28,
                                            child: Stack(
                                              children: const [
                                                Positioned(
                                                  left: 0,
                                                  bottom: 0,
                                                  top: 0,
                                                  child: CircleAvatar(
                                                    radius: 12,
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 16,
                                                  bottom: 0,
                                                  top: 0,
                                                  child: CircleAvatar(
                                                    radius: 12,
                                                    backgroundColor: Colors.pink,
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 32,
                                                  bottom: 0,
                                                  top: 0,
                                                  child: CircleAvatar(
                                                    radius: 12,
                                                    backgroundColor: Colors.blue,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            )),

            /// Bottom Nav Bar
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
                      color: Colors.blue[50],
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
                      size: 18,
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
