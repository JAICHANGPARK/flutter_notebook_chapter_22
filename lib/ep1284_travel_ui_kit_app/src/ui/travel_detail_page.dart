import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TravelUiDetailPage extends StatefulWidget {
  const TravelUiDetailPage({Key? key}) : super(key: key);

  @override
  State<TravelUiDetailPage> createState() => _TravelUiDetailPageState();
}

class _TravelUiDetailPageState extends State<TravelUiDetailPage> {
  List<String> imgItems = [
    "https://cdn.pixabay.com/photo/2015/11/27/10/38/hotel-swimming-pool-1065275_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/09/26/04/59/holiday-complex-461633_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/05/09/20/56/vacation-4192123__340.jpg",
    "https://cdn.pixabay.com/photo/2017/03/27/07/27/republic-of-the-philippines-2177616__340.jpg",
    "https://cdn.pixabay.com/photo/2015/11/24/12/35/bungalow-1059931_960_720.jpg",
  ];
  String currentImageUrl = "https://cdn.pixabay.com/photo/2015/11/27/10/38/hotel-swimming-pool-1065275_960_720.jpg";
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 350,
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage("$currentImageUrl"),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 8,
                  top: 32,
                  child: IconButton(
                    onPressed: () {
                      context.pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios_new),
                  ),
                ),
                Positioned(
                  bottom: 8,
                  left: 8,
                  right: 0,
                  child: SizedBox(
                    height: 96,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              currentImageUrl = imgItems[index];
                            });
                          },
                          child: Container(
                            width: 96,
                            margin: const EdgeInsets.only(right: 12),
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                color: currentImageUrl == imgItems[index] ? Colors.blueAccent : Colors.white,
                              ),
                              image: DecorationImage(
                                image: NetworkImage(
                                  imgItems[index],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: imgItems.length,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(16),
                  height: 42,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        var items = ["Overview", "Promo & Discount", "Review"];
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedTabIndex = index;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 16),
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: selectedTabIndex == index ? Colors.blue : Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Center(
                              child: Text(
                                "${items[index]}",
                                style: TextStyle(
                                  color: selectedTabIndex == index ? Colors.blue : Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                Expanded(
                  child: IndexedStack(
                    index: selectedTabIndex,
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                              child: Row(
                                children: [
                                  const Text(
                                    "Lalakhal Najimagor Resort",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                  ),
                                  Column(
                                    children: const [
                                      Text(
                                        "\$350",
                                        style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.blueAccent,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text("1 Night"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                              child: Row(
                                children: [
                                  ...List.generate(
                                    5,
                                    (index) => const Padding(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 18,
                                      ),
                                    ),
                                  ),
                                  const Text("5.0"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 8, 0, 0),
                              child: Row(
                                children: const [
                                  Icon(Icons.location_on_outlined),
                                  Text("Sylthet, Zindabazar"),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 16,
                                horizontal: 16,
                              ),
                              child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, qu"),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Availability",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "MON - SAT * 10:00 - 17:00",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueAccent,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(16),
            height: 58,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(32),
            ),
            child: const Center(
              child: Text(
                "Book Now",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
