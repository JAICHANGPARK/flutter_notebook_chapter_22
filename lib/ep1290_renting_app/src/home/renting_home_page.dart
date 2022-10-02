import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

final rentingPageIndex = StateProvider((ref) => 0);
final rentingHomeTabIndex = StateProvider((ref) => 0);

class RentingHomePage extends StatefulWidget {
  const RentingHomePage({Key? key}) : super(key: key);

  @override
  State<RentingHomePage> createState() => _RentingHomePageState();
}

class _RentingHomePageState extends State<RentingHomePage> {
  List<String> menuItems = ["All", "Apartments", "Houses", "Hotels"];

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final index = ref.watch(rentingPageIndex);
      final tabIndex = ref.watch(rentingHomeTabIndex);

      return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: index,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24, left: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Discover",
                          style: GoogleFonts.montserrat(
                            fontSize: 32,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            showSearch(
                              context: context,
                              delegate: _SearchDelegate(),
                              useRootNavigator: true,
                            );
                          },
                          icon: const Icon(Icons.search),
                          iconSize: 34,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 72,
                      child: ListView.builder(
                        itemCount: menuItems.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              ref.read(rentingHomeTabIndex.notifier).state = index;
                            },
                            child: Container(
                              margin: const EdgeInsets.only(
                                right: 16,
                                top: 8,
                                bottom: 8,
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                              ),
                              decoration: BoxDecoration(
                                color: tabIndex == index ? const Color(0xff264c86) : Colors.blueGrey[50],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  "${menuItems[index]}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: tabIndex == index ? Colors.white : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Expanded(
                        child: IndexedStack(
                      index: tabIndex,
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Popular',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 28,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text("See all"),
                                  ),
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(vertical: 16),
                                height: 300,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      width: 260,
                                      margin: const EdgeInsets.only(right: 16),
                                      child: Card(
                                        elevation: 3,
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Column(
                                            children: [
                                              const Expanded(child: Placeholder()),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "Flutter House",
                                                        style: GoogleFonts.montserrat(
                                                            fontWeight: FontWeight.bold, fontSize: 16),
                                                      ),
                                                      Spacer(),
                                                      Icon(
                                                        Icons.star,
                                                        size: 16,
                                                        color: Colors.orange,
                                                      ),
                                                      Text("4.7"),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 8,
                                                  ),
                                                  Row(
                                                    children: const [
                                                      Icon(
                                                        Icons.location_on_outlined,
                                                        size: 16,
                                                      ),
                                                      Text(
                                                        "Paris, France",
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(vertical: 12),
                                                    child: Text(
                                                      "The room is located in the center of Paris. "
                                                      "There is a terrace on site.",
                                                      style: GoogleFonts.montserrat(
                                                        fontSize: 12,

                                                      ),
                                                    ),
                                                  ),
                                                  const Text.rich(
                                                    TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: "\$38",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: '/person',
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      // decoration: BoxDecoration(
                                      //   color: Colors.white,
                                      //   borderRadius: BorderRadius.circular(8),
                                      //   boxShadow: [
                                      //     BoxShadow(
                                      //       color: Colors.black.withOpacity(0.1)
                                      //     )
                                      //   ]
                                      // ),1
                                    );
                                  },
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'New offers',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 28,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text("See all"),
                                  ),
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(vertical: 16),
                                height: 300,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: Text("$tabIndex"),
                        ),
                        Center(
                          child: Text("$tabIndex"),
                        ),
                        Center(
                          child: Text("$tabIndex"),
                        )
                      ],
                    ))
                  ],
                ),
              ),
              Center(
                child: Text("$index"),
              ),
              Center(
                child: Text("$index"),
              ),
              Center(
                child: Text("$index"),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: index,
          onTap: (i) {
            ref.read(rentingPageIndex.notifier).state = i;
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xff264c86),
          unselectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.home_filled,
              ),
            ),
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.favorite_border,
              ),
            ),
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.notifications_active_outlined,
              ),
            ),
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.perm_identity_sharp,
              ),
            )
          ],
        ),
      );
    });
  }
}

class _SearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [IconButton(onPressed: () {}, icon: const Icon(Icons.clear))];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return const Text("Loading");
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return const Text("buildResults");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return const Text("buildSuggestions");
  }
}
