import 'package:flutter/material.dart';

class TravelUIHomePage extends StatefulWidget {
  const TravelUIHomePage({Key? key}) : super(key: key);

  @override
  State<TravelUIHomePage> createState() => _TravelUIHomePageState();
}

class _TravelUIHomePageState extends State<TravelUIHomePage> {
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
              margin: const EdgeInsets.symmetric(vertical: 0),
              height: 64,
              color: Colors.blue,
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 0),
              height: 320,
              color: Colors.blue,
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
