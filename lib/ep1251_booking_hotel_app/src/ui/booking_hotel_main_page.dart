import 'package:flutter/material.dart';

class BookingHotelMainPage extends StatelessWidget {
  const BookingHotelMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text("Dreamwalker"),
                    Row(
                      children: [
                        Text("Surabaya, Jawa Timur"),
                        Icon(
                          Icons.keyboard_arrow_down,
                        )
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
