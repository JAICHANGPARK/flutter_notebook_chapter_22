import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_22/ep1251_booking_hotel_app/src/ui/booking_hotel_main_page.dart';

class BookingHotelStartScreen extends StatelessWidget {
  const BookingHotelStartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 0,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const NetworkImage(
                    "https://cdn.pixabay.com/photo/2018/02/24/17/17/window-3178666__340.jpg",
                  ),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken),
                ),
              ),
            ),
          ),
          Positioned(
            left: 32,
            right: 32,
            top: 72,
            bottom: 64,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "TuruRek",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 72,
                ),
                const Text(
                  "Temukan hotel\nberkualitas dengan\nharga terjangkau",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      height: 1.5,
                      wordSpacing: 8,
                      letterSpacing: 1.5),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  "Memudahkan anda mencari hotel yang nyaman dan berkualitas",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    height: 1.5,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => BookingHotelMainPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 52,
                    decoration: const BoxDecoration(
                      color: Colors.blueAccent,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Cari Hotel",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 16,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
