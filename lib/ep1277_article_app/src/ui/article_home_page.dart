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
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.grey,
                    ),
                    child: const Text("See all"),
                  ),
                ],
              ),
              Container(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 200,
                      margin: const EdgeInsets.only(top: 8, bottom: 4, right: 16),
                      // decoration: BoxDecoration(
                      //   color: Colors.pink,
                      //   borderRadius: BorderRadius.circular(4),
                      // ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 18,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4),
                                      image: const DecorationImage(
                                        image: NetworkImage(
                                          "https://cdn.pixabay.com/photo/2016/12/13/22/15/chart-1905225__340.jpg",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    padding: const EdgeInsets.only(
                                      right: 8,
                                      top: 8,
                                    ),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        width: 64,
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 4,
                                        ),
                                        decoration:
                                            BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              "Hot 🔥",
                                              style: TextStyle(
                                                fontSize: 13,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  right: 12,
                                  bottom: 0,
                                  child: CircleAvatar(
                                    radius: 18,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Aug 20, 2022",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Lorem ipsum dolor sit amet, "
                                "consectetur adipisicing elit, sed do eiusmod tempor",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
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
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.grey,
                    ),
                    child: const Text("See all"),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Column(
                children: List.generate(
                  6,
                  (index) => Container(
                    height: 80,
                    margin: const EdgeInsets.only(bottom: 16),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.pink,
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2014/11/07/00/00/volleyball-520093__340.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(right: 32),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'What Training Do Volleyball Players Need?',
                                    style: TextStyle(fontWeight: FontWeight.bold, height: 1.5),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text("2h ago - 8k read"),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
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
