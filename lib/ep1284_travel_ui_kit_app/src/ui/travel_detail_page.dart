import 'package:flutter/material.dart';

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
            height: 300,
            color: Colors.blue,
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
