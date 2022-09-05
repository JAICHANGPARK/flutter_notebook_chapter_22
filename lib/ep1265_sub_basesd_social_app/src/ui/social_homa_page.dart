import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialHomePage extends StatefulWidget {
  const SocialHomePage({Key? key}) : super(key: key);

  @override
  State<SocialHomePage> createState() => _SocialHomePageState();
}

class _SocialHomePageState extends State<SocialHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "CreateOne",
                  style: GoogleFonts.notoSans(),
                ),
                Spacer(),
                CircleAvatar(),
                CircleAvatar(),
              ],
            ),
            Expanded(child: Placeholder()),
            Divider(
              height: 0,
              color: Colors.grey[300],
            ),
            Container(
              height: 72,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
