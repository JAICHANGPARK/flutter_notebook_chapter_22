import 'package:flutter/material.dart';

class EventBookingHomePage extends StatefulWidget {
  const EventBookingHomePage({Key? key}) : super(key: key);

  @override
  State<EventBookingHomePage> createState() => _EventBookingHomePageState();
}

class _EventBookingHomePageState extends State<EventBookingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const CircleAvatar(),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Hi, Dreamwalker",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            color: Colors.cyan,
                            size: 14,
                          ),
                          const Text("New York")
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 32,
                    width: 32,
                    child: Stack(
                      children: [
                        Positioned(
                            child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.notifications_none),
                        )),
                        const Positioned(
                            right: 0,
                            top: 8,
                            child: CircleAvatar(
                              radius: 4,
                              backgroundColor: Colors.red,
                            ))
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
