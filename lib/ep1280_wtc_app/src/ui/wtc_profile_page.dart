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
              const Icon(Icons.arrow_back_ios_new),
              const CircleAvatar(
                radius: 24,
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.orange,
                ),
                child: const Icon(
                  Icons.add,
                  size: 12,
                  color: Colors.deepOrange,
                ),
              ),
              Icon(
                Icons.settings_outlined,
              )
            ],
          )
        ],
      ),
    );
  }
}
