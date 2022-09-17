import 'package:flutter/material.dart';

class ArticleHomePage extends StatefulWidget {
  const ArticleHomePage({Key? key}) : super(key: key);

  @override
  State<ArticleHomePage> createState() => _ArticleHomePageState();
}

class _ArticleHomePageState extends State<ArticleHomePage> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Home"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        selectedIndex: _pageIndex,
        onDestinationSelected: (idx) {
          setState(() {
            _pageIndex = idx;
          });
        },
        elevation: 8,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_filled), label: ""),
          NavigationDestination(icon: Icon(Icons.search), label: ""),
          NavigationDestination(icon: Icon(Icons.bookmark_border), label: ""),
          NavigationDestination(icon: Icon(Icons.perm_identity), label: ""),
        ],
      ),
    );
  }
}
