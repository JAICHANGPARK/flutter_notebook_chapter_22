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
                                    left: 4,
                                    bottom: 4,
                                    top: 4,
                                    right: 4,
                                    child: CircleAvatar(
                                      radius: 32,
                                    ),
                                  ),
                                  Positioned(
                                    right: 4,
                                    bottom: 4,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xfffece01),
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                      padding: const EdgeInsets.all(1),
                                      child: const Icon(
                                        Icons.add,
                                        size: 14,
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
                          backgroundColor: (index == 1 || index == 2) ? const Color(0xfffece01) : Colors.white,
                          child: Container(
                            margin: const EdgeInsets.all(2),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Container(
                              margin: const EdgeInsets.all(3),
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
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
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.indigo,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                radius: 26,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Dreamwalker",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text("2 days ago"),
                                ],
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.more_vert_outlined,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8,),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                          child: Text(
                            "Perfect Flutter Development today ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        Container(
                          height: 260,
                          margin: const EdgeInsets.symmetric(vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.favorite),
                            ),
                            const Text("154"),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.chat_rounded),
                            ),
                            const Text("40"),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark),
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 16,
                              ),
                              decoration:
                                  BoxDecoration(color: const Color(0xfffece01), borderRadius: BorderRadius.circular(8)),
                              child: const Center(
                                child: Text("Tip Post"),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
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
