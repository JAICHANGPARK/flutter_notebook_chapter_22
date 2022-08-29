import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class EcommerceHomePage extends StatefulWidget {
  const EcommerceHomePage({Key? key}) : super(key: key);

  @override
  State<EcommerceHomePage> createState() => _EcommerceHomePageState();
}

class _EcommerceHomePageState extends State<EcommerceHomePage> {
  PageController pageController = PageController(initialPage: 0, viewportFraction: 0.7);
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 0,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 38,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(2),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: const TextField(
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.search,
                                  color: Colors.indigo,
                                ),
                                iconColor: Colors.indigo,
                                border: InputBorder.none,
                                hintText: "Search Shoes, Watch...",
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.qr_code_scanner),
                          color: Colors.indigo,
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  Container(
                    height: 140,
                    color: Colors.grey,
                    child: PageView(
                      controller: pageController,
                      children: [
                        Container(
                          width: 200,
                          margin: EdgeInsets.only(right: 16),
                          decoration: BoxDecoration(

                            color: Colors.pink,
                          ),
                        ),
                        Container(
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.pink,
                          ),
                          margin: EdgeInsets.only(right: 16),
                        ),
                      ],
                    ),
                  ),
                  DotsIndicator(
                    dotsCount: 4,
                    position: pageIndex.toDouble(),
                  )
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: SizedBox(
                height: 80,
                child: Stack(
                  children: [
                    Positioned(
                      right: 0,
                      bottom: 0,
                      left: 0,
                      top: 16,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[300]!,
                              blurRadius: 1,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.home,
                                  color: Colors.indigo,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Home",
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.sell,
                                  color: Colors.blueGrey[300],
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Delas",
                                  style: TextStyle(
                                    color: Colors.blueGrey[300],
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 48,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.shopping_bag,
                                  color: Colors.blueGrey[300],
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Cart",
                                  style: TextStyle(
                                    color: Colors.blueGrey[300],
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person,
                                  color: Colors.blueGrey[300],
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Account",
                                  style: TextStyle(
                                    color: Colors.blueGrey[300],
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      child: CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.white,
                        child: Container(
                          margin: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blueGrey[200]!,
                                offset: const Offset(0, 2),
                                blurRadius: 4,
                                spreadRadius: 2,
                              )
                            ],
                            shape: BoxShape.circle,
                            color: Colors.indigo,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.store,
                            ),
                          ),
                        ),
                      ),
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
