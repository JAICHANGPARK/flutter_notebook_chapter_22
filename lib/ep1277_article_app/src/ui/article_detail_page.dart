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
                      const Text(
                        "Aug 10, 2022 by",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      const Text(
                        " Esther Howard",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        child: const Center(
                          child: Text("Sport"),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        child: const Center(
                          child: Text("Health"),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.blue,
                      image: const DecorationImage(
                        image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2017/04/27/08/29/man-2264825__340.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 24,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        children: const [
                          Text(
                            "Esther Howard",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Aug 10, 2022",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 28,
                          vertical: 8,
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
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipisicing elit, '
                    'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                    ' Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi '
                    'ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit ',
                    style: TextStyle(
                      fontSize: 12,
                      height: 1.6,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: IntrinsicHeight(
                      child: Row(
                        children: [
                          Container(
                            width: 2,
                            height: 72,
                            color: Colors.blueAccent,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          const Expanded(
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipisicing elit, "
                              "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                              " Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut "
                              "aliquip ex ea commodo consequat.",
                              style: TextStyle(
                                fontSize: 12,
                                height: 1.6,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipisicing elit,'
                    ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                    ' Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi'
                    ' ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit'
                    ' in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur '
                    'sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit'
                    ' anim id est laborum.',
                    style: TextStyle(
                      fontSize: 12,
                      height: 1.6,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
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
                    children: const [
                      Icon(
                        Icons.thumb_up_alt_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "1.2k",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      VerticalDivider(
                        color: Colors.white,
                        width: 24,
                      ),
                      Icon(
                        Icons.chat_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
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
