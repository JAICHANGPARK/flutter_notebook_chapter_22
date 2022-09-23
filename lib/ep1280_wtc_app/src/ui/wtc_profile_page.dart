import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1280_wtc_app/src/ui/wtc_home_app.dart';
import 'package:ionicons/ionicons.dart';

import 'wtc_user_list_component.dart';

class WTCProfilePage extends StatefulWidget {
  const WTCProfilePage({Key? key}) : super(key: key);

  @override
  State<WTCProfilePage> createState() => _WTCProfilePageState();
}

class _WTCProfilePageState extends State<WTCProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 16,
                top: 24,
                left: 16,
              ),
              child: Row(
                children: [
                  const Icon(Icons.arrow_back_ios_new),
                  const SizedBox(
                    width: 32,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const WTCHomePage();
                            },
                          ),
                        );
                      },
                      child: const CircleAvatar(
                        radius: 24,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.orange[200],
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 12,
                      color: Colors.deepOrange,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Icon(
                    Icons.settings_outlined,
                    size: 28,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: const [
                  Text(
                    "Dream Walker",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  CircleAvatar(
                    radius: 8,
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.check,
                      size: 12,
                    ),
                  ),
                  Spacer(),
                  Icon(Ionicons.logo_instagram),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(Ionicons.logo_twitter),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(Ionicons.logo_linkedin),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "CEO @FlutterDevCompany",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    "www.flutterlivecoding.com",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.location_pin,
                        size: 15,
                      ),
                      Text(
                        "Seoul, Republic of Korea",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Divider(),
            const WtcUserListComponent(),
            const Divider(),
            Container(
              height: 72,
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(32),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.4),
                            blurRadius: 2,
                            spreadRadius: 2,
                            offset: const Offset(2, 2),
                          )
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          "Profile",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        "Posts",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        "Videos",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        "Events",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 24,
              ),
              child: Text(
                "About Me",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[300]!,
                          ),
                          borderRadius: BorderRadius.circular(4)),
                      margin: const EdgeInsets.only(bottom: 16),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "PAST JOBS",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: const [
                              CircleAvatar(),
                              SizedBox(
                                width: 16,
                              ),
                              Text("Product Manager @ A Company"),
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: const [
                              CircleAvatar(),
                              SizedBox(
                                width: 16,
                              ),
                              Text("Flutter Developer @ B Company"),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[300]!,
                          ),
                          borderRadius: BorderRadius.circular(4)),
                      margin: const EdgeInsets.only(bottom: 16),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "EDUCATION",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: const [
                              Text(
                                "Flutter University / 2015-2020",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
