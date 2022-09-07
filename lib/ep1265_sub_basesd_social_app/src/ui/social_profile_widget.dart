import 'package:flutter/material.dart';

class SocialProfilePage extends StatefulWidget {
  const SocialProfilePage({Key? key}) : super(key: key);

  @override
  State<SocialProfilePage> createState() => _SocialProfilePageState();
}

class _SocialProfilePageState extends State<SocialProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 240,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 48,
                    top: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.orange,
                        image: DecorationImage(
                            image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2017/04/27/08/29/man-2264825__340.jpg",
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    right: 16,
                    top: 64,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          child: Icon(Icons.keyboard_arrow_left),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          radius: 24,
                          child: Icon(Icons.more_vert_outlined),
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Center(
                      child: CircleAvatar(
                        radius: 54,
                        backgroundColor: Colors.brown,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                children: const [
                  Text("Dream"),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Your newest developer here to play game and coding with something flutter application",
                    style: TextStyle(height: 2),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
            ),
            Container(
              width: 200,
              height: 64,
              decoration: BoxDecoration(
                color: const Color(0xfffece01),
                borderRadius: BorderRadius.circular(
                  16,
                ),
              ),
              child: const Center(
                child: Text(
                  "Become a Fan for \$50.00",
                ),
              ),
            ),
            Divider(color: Colors.grey,),
            TabBar(tabs: [
              Tab(
                icon: Icon(Icons.memory),
                text: "Ports",
              )
            ], )
          ],
        ),
      ),
    );
  }
}
