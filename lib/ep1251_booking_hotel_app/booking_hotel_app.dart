import 'package:flutter/material.dart';

import 'src/ui/booking_hotel_start_screen.dart';

class BookingHotelApp extends StatelessWidget {
  const BookingHotelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const BookingHotelStartScreen(),
      },
    );
  }
}
