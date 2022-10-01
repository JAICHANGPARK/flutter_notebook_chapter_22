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
          child: Padding(
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
                      onPressed: () {},
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
                )
              ],
            ),
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
