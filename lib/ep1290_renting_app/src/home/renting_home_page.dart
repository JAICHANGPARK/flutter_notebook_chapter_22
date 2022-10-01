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
                          icon: Icon(Icons.search),
                          iconSize: 34,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 84,
                      color: Colors.purple,
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
                                    child: Text("See all"),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 16),
                                height: 300,
                                color: Colors.blue,
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
                                    child: Text("See all"),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 16),
                                height: 300,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                        )
                      ],
                    ))
                  ],
                ),
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
          selectedItemColor: Color(0xff264c86),
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
    return [
      IconButton(onPressed: (){}, icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return Text("Loading");
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Text("buildResults");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return Text("buildSuggestions");
  }
}
