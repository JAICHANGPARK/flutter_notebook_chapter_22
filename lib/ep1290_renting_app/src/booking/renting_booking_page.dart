import 'package:flutter/material.dart';

class RentingBookingPage extends StatefulWidget {
  const RentingBookingPage({Key? key}) : super(key: key);

  @override
  State<RentingBookingPage> createState() => _RentingBookingPageState();
}

class _RentingBookingPageState extends State<RentingBookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 16,
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.white,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          "Flutter House",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "Nov, 13-16 - 3 guests",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
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
      ),
    );
  }
}
