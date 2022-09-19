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
                children: [
                  Text("Sport"),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Text("10 Focus Exercises To Help Improve Concertraintion Skills"),
                  ),
                  Row(
                    children: [
                      Text("Aug 10, 2022 by"),
                      Text(
                        "Esther Howard",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        child: Center(
                          child: Text("Sport"),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        child: Center(
                          child: Text("Health"),
                        ),
                      )
                    ],
                  )
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
