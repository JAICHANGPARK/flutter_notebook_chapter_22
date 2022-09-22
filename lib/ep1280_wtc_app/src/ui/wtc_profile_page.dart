import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

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
                  const Expanded(
                    child: CircleAvatar(
                      radius: 24,
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
                children: [
                  const Text(
                    "Dream Walker",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const CircleAvatar(
                    radius: 8,
                    child: Icon(
                      Icons.check,
                      size: 12,
                    ),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                  ),
                  const Spacer(),
                  const Icon(Ionicons.logo_instagram),
                  const SizedBox(
                    width: 12,
                  ),
                  const Icon(Ionicons.logo_twitter),
                  const SizedBox(
                    width: 12,
                  ),
                  const Icon(Ionicons.logo_linkedin),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("CEO @FlutterDevCompany"),
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
                    children: [
                      const Icon(
                        Icons.location_pin,
                        size: 15,
                      ),
                      const Text("Seoul, Republic of Korea")
                    ],
                  ),
                ],
              ),
            ),
            const Divider(),
            Container(
              height: 120,
              margin: EdgeInsets.only(left: 16),
              color: Colors.pink,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        "Dream Walker",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.grey,
                        ),
                        onPressed: () {},
                        child: const Text(
                          "See more",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        color: Colors.grey,
                      )
                    ],
                  ),
                  Expanded(
                      child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 20,
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Flutter",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    scrollDirection: Axis.horizontal,
                  ))
                ],
              ),
            ),
            const Divider(),
            Container(
              height: 100,
              color: Colors.pink,
            ),
            const Expanded(child: Placeholder())
          ],
        ),
      ),
    );
  }
}
