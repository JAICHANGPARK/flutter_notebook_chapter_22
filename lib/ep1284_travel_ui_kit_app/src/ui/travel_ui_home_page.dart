import 'package:flutter/material.dart';

class TravelUIHomePage extends StatefulWidget {
  const TravelUIHomePage({Key? key}) : super(key: key);

  @override
  State<TravelUIHomePage> createState() => _TravelUIHomePageState();
}

class _TravelUIHomePageState extends State<TravelUIHomePage> {
  int _pageTab = 0;
  List<String> _tabItems = ["All", "Beach", "Mountain", "River"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[100],
        foregroundColor: Colors.black,
        leading: const Icon(Icons.arrow_back_ios_new),
        title: const Text("Category"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.tune,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(16, 8, 8, 16),
              height: 64,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(24),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: const TextField(
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.search,
                          ),
                          border: InputBorder.none,
                          hintText: "Search",
                          // labelText: "Search"
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Cancel"),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 16),
              height: 52,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _pageTab = index;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 16, top: 8, bottom: 8),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: _pageTab == index ? Colors.blue : Colors.grey[400]!,
                          ),
                          borderRadius: BorderRadius.circular(32)),
                      padding: const EdgeInsets.symmetric(horizontal: 28),
                      child: Center(
                        child: Text(
                          _tabItems[index],
                          style: TextStyle(
                            color: _pageTab == index ? Colors.blue : Colors.grey[400]!,
                          ),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: _tabItems.length,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 16,
              ),
              height: 320,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Explore Cities",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text("See all"),
                      )
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 16, bottom: 2, top: 2, left: 2),
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 0.5,
                                blurRadius: 0.5,
                              )
                            ],
                          ),
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2020/03/22/10/57/thailand-4956718_960_720.jpg",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Stack(),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Lalakhal Resort",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_pin,
                                        size: 14,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "Sythet, Zindabazar",
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 0),
              height: 320,
              color: Colors.blue,
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        // color: Colors.white,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.map_rounded), label: "Explore"),
              BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "Bookmarks"),
              BottomNavigationBarItem(icon: Icon(Icons.person_2), label: "Profile"),
            ],
          ),
        ),
      ),
    );
  }
}
