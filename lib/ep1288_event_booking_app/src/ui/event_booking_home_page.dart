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
            Row(
              children: [
                CircleAvatar(),
                Column(
                  children: [
                    Text("Hi, Dreamwalker"),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.cyan,
                        ),
                        Text("New York")
                      ],
                    ),
                  ],
                ),
                Stack(
                  children: [
                    
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
