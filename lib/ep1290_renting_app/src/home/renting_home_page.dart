import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final rentingPageIndex = StateProvider((ref) => 0);

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
      return Scaffold(
        body: Column(
          children: [],
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
          items: [
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
