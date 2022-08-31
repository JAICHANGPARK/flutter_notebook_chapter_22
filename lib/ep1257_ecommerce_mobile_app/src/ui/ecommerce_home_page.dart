import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1257_ecommerce_mobile_app/src/ui/ecommerce_detail_page.dart';

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
                            height: 120,
                            margin: const EdgeInsets.only(left: 16, top: 16),
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
                                    color: Colors.yellowAccent,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 24,
                                        top: 16,
                                        bottom: 24,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            const Text("CASUAL SHOE"),
                                            Row(
                                              children: [
                                                const Text(
                                                  "40%",
                                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                                ),
                                                const Text("OFF"),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Container(
                                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                              decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius: BorderRadius.circular(2),
                                              ),
                                              child: const Text(
                                                "SHOP NOW",
                                                style: TextStyle(color: Colors.white),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
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
                                Container(
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.pink,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  margin: const EdgeInsets.only(right: 16),
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
                          SizedBox(
                            height: 8,
                          ),
                          DotsIndicator(
                            dotsCount: 4,
                            position: pageIndex.toDouble(),
                            decorator: DotsDecorator(
                              activeColor: Colors.indigo,
                              color: Colors.white,
                              // activeShape: RoundedRectangleBorder(
                              //     side: const BorderSide(
                              //       color: Colors.grey,
                              //     ),
                              //     borderRadius: BorderRadius.circular(16)),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 84,
                            margin: const EdgeInsets.only(left: 16),
                            child: ListView.builder(
                              itemCount: 10,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: Column(
                                    children: const [
                                      CircleAvatar(
                                        radius: 32,
                                        child: Text("Image"),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "Sneakers",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16, right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Fla⚡h sale",
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
                            margin: const EdgeInsets.only(left: 16),
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => EcommerceDetailPage(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 16),
                                    width: 180,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey[300]!,
                                      ),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 8,
                                          right: 8,
                                          bottom: 8,
                                          top: 8,
                                          child: Column(
                                            children: [
                                              Expanded(
                                                flex: 6,
                                                child: Image.network(
                                                  "https://help.apple.com/assets/61AFEC45FA5233173908347B/61B0509E1BF38548362237B5/ko_KR/b9f519195f84950573eea5088a49b964.png",
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Expanded(
                                                  flex: 5,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [
                                                      const Text(
                                                        "Airpods Max space",
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                      Row(
                                                        children: const [
                                                          Icon(
                                                            Icons.star,
                                                            size: 16,
                                                            color: Colors.yellow,
                                                          ),
                                                          SizedBox(
                                                            width: 4,
                                                          ),
                                                          Text(
                                                            "4.5",
                                                            style: TextStyle(
                                                              fontSize: 13,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                          Text(
                                                            "(124)",
                                                            style: TextStyle(
                                                              color: Colors.grey,
                                                              fontSize: 12,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: const [
                                                          Text(
                                                            "\$5.99",
                                                            style: TextStyle(
                                                              color: Colors.indigo,
                                                              fontSize: 16,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 4,
                                                          ),
                                                          Text(
                                                            "\$8.15",
                                                            style: TextStyle(
                                                                decoration: TextDecoration.lineThrough,
                                                                color: Colors.grey,
                                                                fontSize: 12),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ))
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                          right: 8,
                                          bottom: 8,
                                          child: CircleAvatar(
                                            radius: 18,
                                            backgroundColor: Colors.grey[200],
                                            child: const Icon(Icons.add),
                                            foregroundColor: Colors.grey,
                                          ),
                                        ),
                                        Positioned(
                                            left: 8,
                                            top: 8,
                                            child: Container(
                                              padding: const EdgeInsets.symmetric(
                                                horizontal: 12,
                                                vertical: 4,
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.blue[200],
                                                borderRadius: BorderRadius.circular(4),
                                              ),
                                              child: const Text(
                                                "25% OFF",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ))
                                      ],
                                    ),
                                  ),
                                );
                              },
                              itemCount: 10,
                              scrollDirection: Axis.horizontal,
                            ),
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
                            margin: const EdgeInsets.only(left: 16, bottom: 72),
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: const EdgeInsets.only(right: 16),
                                  width: 180,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey[300]!,
                                    ),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 8,
                                        right: 8,
                                        bottom: 8,
                                        top: 8,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              flex: 6,
                                              child: Image.network(
                                                "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/MKU83_VW_34FR+watch-40-alum-spacegray-cell-se_VW_34FR_WF_CO_GEO_KR?wid=700&hei=700&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1632171038000%2C1630712903000",
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Expanded(
                                                flex: 5,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    const Text(
                                                      "Apple Watch series 3 space",
                                                      style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                    Row(
                                                      children: const [
                                                        Icon(
                                                          Icons.star,
                                                          size: 16,
                                                          color: Colors.yellow,
                                                        ),
                                                        SizedBox(
                                                          width: 4,
                                                        ),
                                                        Text(
                                                          "4.5",
                                                          style: TextStyle(
                                                            fontSize: 13,
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                        Text(
                                                          "(124)",
                                                          style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 12,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: const [
                                                        Text(
                                                          "\$5.99",
                                                          style: TextStyle(
                                                            color: Colors.indigo,
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 4,
                                                        ),
                                                        Text(
                                                          "\$8.15",
                                                          style: TextStyle(
                                                              decoration: TextDecoration.lineThrough,
                                                              color: Colors.grey,
                                                              fontSize: 12),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ))
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        right: 8,
                                        bottom: 8,
                                        child: CircleAvatar(
                                          radius: 18,
                                          backgroundColor: Colors.grey[200],
                                          child: const Icon(Icons.add),
                                          foregroundColor: Colors.grey,
                                        ),
                                      ),
                                      Positioned(
                                          left: 8,
                                          top: 8,
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                            decoration: BoxDecoration(
                                                color: Colors.blue[200], borderRadius: BorderRadius.circular(4)),
                                            child: const Text(
                                              "25% OFF",
                                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                                            ),
                                          ))
                                    ],
                                  ),
                                );
                              },
                              itemCount: 10,
                              scrollDirection: Axis.horizontal,
                            ),
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
