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
            const Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 0,
              child: Placeholder(),
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
