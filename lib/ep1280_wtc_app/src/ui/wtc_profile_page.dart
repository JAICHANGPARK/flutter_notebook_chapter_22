import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    width: 32,
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
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    "Dream Walker",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  CircleAvatar(
                    radius: 8,
                    child: Icon(
                      Icons.check,
                      size: 12,
                    ),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                  ),
                  Spacer(),
                  Icon(Ionicons.logo_instagram),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(Ionicons.logo_twitter),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(Ionicons.logo_linkedin),
                ],
              ),
            ),
            Text("CEO @FlutterDevCompany"),
            Text("www.flutterlivecoding.com"),
            Row(
              children: [
                Icon(
                  Icons.location_pin,
                  size: 15,
                ),
                Text("Seoul, Republic of Korea")
              ],
            )
          ],
        ),
      ),
    );
  }
}
