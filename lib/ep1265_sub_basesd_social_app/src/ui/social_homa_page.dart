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
      backgroundColor: Colors.white,
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
            Container(
              height: 100,
              margin: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 16,
                        top: 16,
                      ),
                      child: Text(
                        "Compose New post",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.image,
                            size: 24,
                            color: Colors.grey,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text("Add Photo"),
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          const Icon(
                            Icons.videocam,
                            size: 24,
                            color: Colors.grey,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text("Add Video"),
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Icon(
                            Icons.location_on,
                            color: Colors.grey,
                            size: 24,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.only(left: 16, top: 8),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8, bottom: 8),
                      child: Column(
                        children: [
                          Expanded(
                            child: SizedBox(
                              width: 64,
                              child: Stack(
                                children: [
                                  const Positioned(
                                    left: 0,
                                    bottom: 0,
                                    top: 0,
                                    right: 0,
                                    child: CircleAvatar(
                                      radius: 32,
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    bottom: 0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xfffece01),
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                      padding: const EdgeInsets.all(2),
                                      child: const Icon(
                                        Icons.add,
                                        size: 16,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Text(
                            "You",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    );
                  }
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 32,
                          backgroundColor: const Color(0xfffece01),
                          child: Container(
                            margin: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Container(
                              margin: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "Dream",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  );
                },
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
                children: const [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
