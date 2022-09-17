import 'package:flutter/material.dart';

class ArticleHomePage extends StatefulWidget {
  const ArticleHomePage({Key? key}) : super(key: key);

  @override
  State<ArticleHomePage> createState() => _ArticleHomePageState();
}

class _ArticleHomePageState extends State<ArticleHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: ""),
          NavigationDestination(icon: Icon(Icons.home), label: ""),
        ],
      ),
    );
  }
}
