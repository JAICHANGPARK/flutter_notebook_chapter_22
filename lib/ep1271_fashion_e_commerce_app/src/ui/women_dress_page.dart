import 'package:flutter/material.dart';

class WomenDressPage extends StatefulWidget {
  const WomenDressPage({Key? key}) : super(key: key);

  @override
  State<WomenDressPage> createState() => _WomenDressPageState();
}

class _WomenDressPageState extends State<WomenDressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Women's Dress"),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.apps),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_bag_outlined)),
        ],
      ),
      body: DefaultTabController(
        length: 6,
        child: Column(
          children: [
            TabBar(labelColor: Colors.black, unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.black,
                tabs: [
              Tab(
                text: "Basic",
              ),
              Tab(
                text: "Cocktail",
              ),
              Tab(
                text: "Evening Gown",
              ),
              Tab(
                text: "Babydoll",
              ),
              Tab(
                text: "Maxi",
              ),
              Tab(
                text: "Slip",
              ),
            ]),
            Expanded(
                child: TabBarView(
              children: [
                Container(),
                Center(
                  child: Text("2"),
                ),
                Center(
                  child: Text("3"),
                ),
                Center(
                  child: Text("4"),
                ),
                Center(
                  child: Text("5"),
                ),
                Center(
                  child: Text("6"),
                )
              ],
            ))
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 68,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: const TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      hintText: "Search",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.filter_list,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
