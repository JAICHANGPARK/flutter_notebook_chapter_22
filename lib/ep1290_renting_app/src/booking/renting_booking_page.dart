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
                vertical: 24,
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
                        SizedBox(
                          height: 8,
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
                  ),
                  SizedBox(
                    width: 32,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
