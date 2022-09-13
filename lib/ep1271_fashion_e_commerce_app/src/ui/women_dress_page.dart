import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            top: 16,
          ),
          child: Column(
            children: [
              const TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                isScrollable: true,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.black,
                indicatorWeight: 2.5,
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
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                  child: TabBarView(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 16),
                    child: MasonryGridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      itemBuilder: (context, index) {
                        return Container(
                            color: Colors.blue,
                            height: index % 2 == 0 ? 200 : 180,
                            child: Column(
                              children: [
                                Expanded(child: Placeholder()),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Strap Neck Bodycon"),
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "\$",
                                          ),
                                          TextSpan(
                                            text: "64",
                                          ),
                                          TextSpan(
                                            text: ".00",
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ));
                      },
                    ),
                    // child: StaggeredGrid.count(
                    //   crossAxisCount: 2,
                    //   crossAxisSpacing: 12,
                    //   mainAxisSpacing: 12,
                    //   children: List.generate(
                    //     10,
                    //     (index) => StaggeredGridTile.count(
                    //       crossAxisCellCount: 2,
                    //       mainAxisCellCount: 2,
                    //       child: Container(
                    //         color: Colors.blue,
                    //         child: Text("$index"),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ),
                  const Center(
                    child: Text("2"),
                  ),
                  const Center(
                    child: Text("3"),
                  ),
                  const Center(
                    child: Text("4"),
                  ),
                  const Center(
                    child: Text("5"),
                  ),
                  const Center(
                    child: Text("6"),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
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
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: const TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      hintText: "Search",
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
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
