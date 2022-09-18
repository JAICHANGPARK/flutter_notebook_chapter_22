import 'package:flutter/material.dart';

class ArticleHomePage extends StatefulWidget {
  const ArticleHomePage({Key? key}) : super(key: key);

  @override
  State<ArticleHomePage> createState() => _ArticleHomePageState();
}

class _ArticleHomePageState extends State<ArticleHomePage> {
  int _pageIndex = 0;
  int _menuIndex = 0;
  List<String> menuItems = ["All", "For You", "Following", "News", "Global", "Finance"];

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
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: menuItems.length,
                  itemBuilder: (context, index) {
                    var item = menuItems[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _menuIndex = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 8, bottom: 8, right: 8),
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        decoration: BoxDecoration(
                          color: _menuIndex == index ? Colors.blueAccent : Colors.grey[200],
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Center(
                            child: Text(
                          "$item",
                          style: TextStyle(
                            color: _menuIndex == index ? Colors.white : Colors.black,
                          ),
                        )),
                      ),
                    );
                  },
                ),
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
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 200,
                      margin: const EdgeInsets.only(top: 8, bottom: 4, right: 16),
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Positioned(child: Container()),
                                Positioned(
                                  right: 12,
                                  bottom: 0,
                                  child: CircleAvatar(
                                    radius: 18,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Aug 20, 2022"),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Lorem ipsum dolor sit amet, "
                                "consectetur adipisicing elit, sed do eiusmod tempor",
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
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
