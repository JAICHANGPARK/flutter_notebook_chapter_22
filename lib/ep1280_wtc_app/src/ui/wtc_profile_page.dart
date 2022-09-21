import 'package:flutter/material.dart';

class WTCProfilePage extends StatefulWidget {
  const WTCProfilePage({Key? key}) : super(key: key);

  @override
  State<WTCProfilePage> createState() => _WTCProfilePageState();
}

class _WTCProfilePageState extends State<WTCProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Icon(Icons.arrow_back_ios_new),
              CircleAvatar(),
              Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                ),
                child: Icon(
                  Icons.add,
                  size: 12,
                  color: Colors.deepOrange,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
