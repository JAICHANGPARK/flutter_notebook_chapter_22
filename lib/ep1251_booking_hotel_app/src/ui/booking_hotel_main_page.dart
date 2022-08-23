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
                top: 24,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dreamwalker",
                        style: TextStyle(
                          color: Colors.grey,
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
                  Spacer(),
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
              padding: EdgeInsets.only(left: 16, right: 16, top: 24),
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
                    style: TextStyle(color: Colors.orangeAccent),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 14,
                    color: Colors.orangeAccent,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
