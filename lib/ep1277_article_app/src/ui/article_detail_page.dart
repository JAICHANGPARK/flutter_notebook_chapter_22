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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.bookmark_border),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
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
                children: [],
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
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(32)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.thumb_up_alt_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(width: 4,),
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
                      SizedBox(width: 4,),
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
