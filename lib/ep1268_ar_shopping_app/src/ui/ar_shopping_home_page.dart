import 'package:flutter/material.dart';

class ArShoppingHomePage extends StatefulWidget {
  const ArShoppingHomePage({Key? key}) : super(key: key);

  @override
  State<ArShoppingHomePage> createState() => _ArShoppingHomePageState();
}

class _ArShoppingHomePageState extends State<ArShoppingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 24,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "HI, DREAM",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          CircleAvatar(
                            radius: 24,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        top: 16,
                        bottom: 16,
                      ),
                      child: SizedBox(
                        height: 320,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 220,
                              margin: const EdgeInsets.only(right: 12),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "GAMING",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "PRO X GAMING",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    "HEADSET",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Most Favorite brands".toUpperCase(),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 80,
                            color: Colors.deepPurple,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: const EdgeInsets.only(right: 12),
                                  width: 140,
                                  decoration: BoxDecoration(
                                    color: Colors.green[200]!,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "deals for you".toUpperCase(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text("SHOW ALL"),
                                style: TextButton.styleFrom(foregroundColor: Colors.blueGrey),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 400,
                            color: Colors.grey,
                            child: GridView.count(
                              crossAxisCount: 2,
                              children: [],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              right: 0,
              child: Container(
                height: 100,
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: 12,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.white,
                      Colors.white,
                      Colors.white.withOpacity(0.5),
                      Colors.white.withOpacity(0.2),
                    ],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.home_filled,
                          size: 34,
                          color: Colors.deepPurple,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "HOME",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.explore_outlined,
                          size: 34,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "EXPLORE",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      radius: 32,
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      child: Icon(
                        Icons.view_in_ar,
                        size: 34,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.favorite_border,
                          size: 34,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "WISHLIST",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.menu,
                          size: 34,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "MORE",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
