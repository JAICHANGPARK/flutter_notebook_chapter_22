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
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text("Category"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.tune,
            ),
          )
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        child: BottomNavigationBar(

          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.map_rounded), label: "Explore"),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "Bookmarks"),
            BottomNavigationBarItem(icon: Icon(Icons.person_2), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
