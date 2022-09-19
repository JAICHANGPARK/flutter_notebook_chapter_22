import 'package:flutter/material.dart';

class ArticleDetailPage extends StatefulWidget {
  const ArticleDetailPage({Key? key}) : super(key: key);

  @override
  State<ArticleDetailPage> createState() => _ArticleDetailPageState();
}

class _ArticleDetailPageState extends State<ArticleDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.bookmark_border),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            left: 16,
            right: 16,
            bottom: 0,
            top: 16,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Sport",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      "10 Focus Exercises To Help Improve Concertraintion Skills",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, height: 1.6),
                    ),
                  ),
                  Row(
                    children: [
                      const Text("Aug 10, 2022 by"),
                      const Text(
                        " Esther Howard",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        child: const Center(
                          child: Text("Sport"),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        child: const Center(
                          child: Text("Health"),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.blue,
                    ),
                  ),
                  Row(
                    children: [
                      const CircleAvatar(),
                      Column(
                        children: [
                          const Text("Esther Howard"),
                          const Text("Aug 10, 2022"),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12,
                        ),
                        child: const Text(
                          'Follow',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: IntrinsicHeight(
                      child: Row(
                        children: [
                          Container(
                            width: 4,
                            height: 72,
                            color: Colors.blueAccent,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          const Expanded(
                            child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 42,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  width: 170,
                  height: 42,
                  decoration: BoxDecoration(color: Colors.blueAccent, borderRadius: BorderRadius.circular(32)),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.thumb_up_alt_outlined,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        "1.2k",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const VerticalDivider(
                        color: Colors.white,
                        width: 24,
                      ),
                      const Icon(
                        Icons.chat_outlined,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        "120",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
