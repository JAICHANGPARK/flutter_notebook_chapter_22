import 'package:flutter/material.dart';

class WTCHomePage extends StatefulWidget {
  const WTCHomePage({Key? key}) : super(key: key);

  @override
  State<WTCHomePage> createState() => _WTCHomePageState();
}

class _WTCHomePageState extends State<WTCHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Placeholder()),
          Container(
            color: Colors.white,
            height: 140,
            margin: const EdgeInsets.only(left: 16,bottom: 8),
            // color: Colors.pink,
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      "Dream Walker",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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
                      size: 16,
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
                          children: const [
                            CircleAvatar(
                              radius: 24,
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
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
