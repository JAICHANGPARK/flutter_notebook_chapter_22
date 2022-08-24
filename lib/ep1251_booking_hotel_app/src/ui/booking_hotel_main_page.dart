import 'package:flutter/material.dart';

class BookingHotelMainPage extends StatelessWidget {
  const BookingHotelMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 32,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Dreamwalker",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                      Row(
                        children: const [
                          Text(
                            "Surabaya, Jawa Timur",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                          )
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 34,
                    width: 34,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 24,
              ),
              child: Row(
                children: const [
                  Text(
                    "Category",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.orangeAccent,
                      fontSize: 12,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 14,
                    color: Colors.orangeAccent,
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16, left: 16),
              height: 32,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 4,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.hotel_outlined,
                          size: 14,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Hotels",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width: 0.5,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 4,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Food",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width: 0.5,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 4,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Coffee",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width: 0.5,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 4,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Destination",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 220,
              margin: const EdgeInsets.fromLTRB(16, 32, 0, 32),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 16),
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2021/08/27/01/33/bedroom-6577523__340.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Rungkut, Surabaya",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                const Text(
                                  "Hotel Bungurasih",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Spacer(),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text(
                                      "80K",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    const Text(
                                      " /Malam",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                    const Spacer(),
                                    Container(
                                      height: 24,
                                      width: 24,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                      child: const Center(
                                        child: Icon(
                                          Icons.bookmark,
                                          color: Colors.orange,
                                          size: 14,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 0,
                bottom: 16,
              ),
              child: Row(
                children: const [
                  Text(
                    "Popular Hotels",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.orangeAccent,
                      fontSize: 12,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 14,
                    color: Colors.orangeAccent,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: List.generate(
                  10,
                  (index) => Container(
                    margin: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: 12,
                    ),
                    height: 100,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 84,
                          height: 84,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
