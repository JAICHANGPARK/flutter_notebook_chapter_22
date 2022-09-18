import 'package:flutter/material.dart';

class ArticleHomePage extends StatefulWidget {
  const ArticleHomePage({Key? key}) : super(key: key);

  @override
  State<ArticleHomePage> createState() => _ArticleHomePageState();
}

class _ArticleHomePageState extends State<ArticleHomePage> {
  int _pageIndex = 0;
  int _menuIndex = 0;
  List<String> menuItems = [""];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Text("Home"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 52,
                color: Colors.pink,
                child: ListView.builder(

                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                  return Container(
                    child: Text("Test"),
                  );
                },),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Hot topic",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("See all"),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.grey,
                    ),
                  ),
                ],
              ),
              Container(
                height: 300,
                color: Colors.black,
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "For you",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("See all"),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.grey,
                    ),
                  ),
                ],
              ),
              Column(
                children: List.generate(
                  6,
                  (index) => Container(
                    height: 120,
                    color: Colors.black,
                    margin: const EdgeInsets.only(bottom: 8),
                  ),
                ),
              )
            ],
          ),
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
