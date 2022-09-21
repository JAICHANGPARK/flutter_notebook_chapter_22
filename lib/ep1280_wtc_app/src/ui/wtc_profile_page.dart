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
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 16,
                top: 24,
                left: 16,
              ),
              child: Row(
                children: [
                  const Icon(Icons.arrow_back_ios_new),
                  SizedBox(
                    width: 24,
                  ),
                  Expanded(
                    child: const CircleAvatar(
                      radius: 24,
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.orange[200],
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 12,
                      color: Colors.deepOrange,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Icon(
                    Icons.settings_outlined,
                    size: 28,
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
