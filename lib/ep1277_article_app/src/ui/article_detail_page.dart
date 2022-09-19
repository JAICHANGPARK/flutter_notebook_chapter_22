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
                  width: 160,
                  height: 42,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Row(
                    children: [
                      Icon(Icons.thumb_up_alt_outlined,),
                      Text("1.2k"),
                      VerticalDivider(
                        color: Colors.white,
                      ),
                      Icon(Icons.chat_outlined),
                      Text("120")
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
