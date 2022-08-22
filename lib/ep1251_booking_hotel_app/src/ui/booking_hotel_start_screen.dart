import 'package:flutter/material.dart';

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
                  image: NetworkImage(
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
              children: [
                Text(
                  "TuruRek",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "Temukan hotel berkualitas dengan harga terjangkau",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    height: 1.5
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
