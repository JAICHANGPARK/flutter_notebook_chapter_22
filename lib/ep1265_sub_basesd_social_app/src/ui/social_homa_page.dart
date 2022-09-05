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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "CreateOne",
                    style: GoogleFonts.notoSans(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    foregroundColor: Colors.black,
                    radius: 24,
                    child: const Icon(
                      Icons.mark_unread_chat_alt_rounded,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    foregroundColor: Colors.black,
                    radius: 24,
                    child: const Icon(
                      Icons.search,
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(child: Placeholder()),
            Divider(
              height: 0,
              color: Colors.grey[300],
            ),
            Container(
              height: 72,
              decoration: const BoxDecoration(
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
