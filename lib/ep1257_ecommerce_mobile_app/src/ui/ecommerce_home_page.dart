import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class EcommerceHomePage extends StatefulWidget {
  const EcommerceHomePage({Key? key}) : super(key: key);

  @override
  State<EcommerceHomePage> createState() => _EcommerceHomePageState();
}

class _EcommerceHomePageState extends State<EcommerceHomePage> {
  PageController pageController = PageController(initialPage: 0, viewportFraction: 0.8);
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
                            padding: const EdgeInsets.symmetric(horizontal: 16),
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
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: 140,
                            margin: const EdgeInsets.only(left: 16, top: 16),
                            color: Colors.grey,
                            child: PageView(
                              padEnds: false,
                              onPageChanged: (idx) {
                                setState(() {
                                  pageIndex = idx;
                                });
                              },
                              controller: pageController,
                              children: [
                                Container(
                                  width: 160,
                                  margin: const EdgeInsets.only(right: 16),
                                  decoration: BoxDecoration(
                                    color: Colors.pink,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                Container(
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.pink,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  margin: const EdgeInsets.only(right: 16),
                                ),
                              ],
                            ),
                          ),
                          DotsIndicator(
                            dotsCount: 4,
                            position: pageIndex.toDouble(),
                            decorator: DotsDecorator(
                              activeColor: Colors.indigo,
                              color: Colors.white,
                              activeShape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(16)),
                              shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(16)),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 84,
                            color: Colors.blueGrey,
                            margin: const EdgeInsets.only(left: 16),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16, right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Fla⚡h sale",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text("View all"),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 220,
                            margin: const EdgeInsets.only(left: 16),
                            color: Colors.blue,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16, right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Top sellers",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text("View all"),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 220,
                            margin: const EdgeInsets.only(left: 16,bottom: 72),
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                  ),
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
