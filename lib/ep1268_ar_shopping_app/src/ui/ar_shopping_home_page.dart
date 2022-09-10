import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1268_ar_shopping_app/src/ui/ar_shopping_wishlist_page.dart';

class ArShoppingHomePage extends StatefulWidget {
  const ArShoppingHomePage({Key? key}) : super(key: key);

  @override
  State<ArShoppingHomePage> createState() => _ArShoppingHomePageState();
}

class _ArShoppingHomePageState extends State<ArShoppingHomePage> {
  int _pageIndex = 0;

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
              child: IndexedStack(
                index: _pageIndex,
                children: [
                  Column(
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
                      Expanded(
                          child: SingleChildScrollView(
                        child: Column(
                          children: [
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
                                    // color: Colors.deepPurple,
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
                                        style: TextButton.styleFrom(
                                          foregroundColor: Colors.blueGrey,
                                        ),
                                        child: const Text("SHOW ALL"),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  SizedBox(
                                    height: 400,
                                    child: GridView.count(
                                      crossAxisCount: 2,
                                      mainAxisSpacing: 16,
                                      crossAxisSpacing: 16,
                                      childAspectRatio: 0.7,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ))
                    ],
                  ),
                  Container(
                    child: Text("Page2"),
                  ),
                  Container(
                    child: Text("Page3"),
                  ),
                  ArShoppingWishlistPage(),
                ],
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
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _pageIndex = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home_filled,
                            size: 34,
                            color: _pageIndex == 0 ? Colors.deepPurple : Colors.grey,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "HOME",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
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
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
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
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _pageIndex = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            _pageIndex == 3 ? Icons.favorite : Icons.favorite_border,
                            size: 34,
                            color: _pageIndex == 3 ? Colors.deepPurpleAccent : Colors.grey,
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
