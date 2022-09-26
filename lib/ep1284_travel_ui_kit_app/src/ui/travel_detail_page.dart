import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TravelUiDetailPage extends StatefulWidget {
  const TravelUiDetailPage({Key? key}) : super(key: key);

  @override
  State<TravelUiDetailPage> createState() => _TravelUiDetailPageState();
}

class _TravelUiDetailPageState extends State<TravelUiDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 350,
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image:
                    NetworkImage("https://cdn.pixabay.com/photo/2015/11/27/10/38/hotel-swimming-pool-1065275__340.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 8,
                  top: 32,
                  child: IconButton(
                    onPressed: () {
                      context.pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios_new),
                  ),
                )
              ],
            ),
          ),
          const Expanded(child: Placeholder()),
          Container(
            margin: const EdgeInsets.all(16),
            height: 58,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(32),
            ),
            child: const Center(
              child: Text(
                "Book Now",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
